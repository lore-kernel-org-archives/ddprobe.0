Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBC916DEB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742002134; cv=none; b=fVYziUUcCioPAxXZPwH0aPOMBQhceHezCSOp3x5n7i3Y47Yz5tC6h2o9NHBXZ7qvJfarXI+Q5LTYTNoI/58S2iLAj+6u077Rtmoj7WtQNUNgsEgyr9HPhTwPCZqCOaByS52BfI0QHwqMU0o9OJ7IxVevv3EwDhP4Ih7br1t7eSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742002134; c=relaxed/simple;
	bh=3M996zfiQV+jy+bYf0KI8DgQAg+muq+mLll0MRKYzHA=;
	h=To:Subject:From:Message-Id:Date; b=bUSC8gL/lcb8xG5YOHim/DpYOggfriOSSTNq04KYeHVMUEuFQAGjhor2rwkzNTS48rNKN3fzEaxAcwUyCbhRVSdyFPjbDuK1F5pkfhAQPevfk0EGpD48CBfHbdagH1Nj8BKRmX+bUd2JhGgooLfwjAQV7JJme89ilHWxkakxRiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PibuEKjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PibuEKjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F5AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742002133;
	bh=3M996zfiQV+jy+bYf0KI8DgQAg+muq+mLll0MRKYzHA=;
	h=To:Subject:From:Date:From;
	b=PibuEKjhmiXzuVOcdCXPEq2UJiif2thvGKngfFjTjJbcqoZJZIqlkHKt2GFKhonBs
	 G8fNvYo3mH+xJm0cvqDk5/fhM0wXEsUe388zQy2TLrehOk+0SCFABL3mGBwTs0JIl/
	 qx+9GR9HftK7TopivQusxO9TXTpLlvydSA4ReZBemD6JO3MiM7JEHUkzO03pp0zc9s
	 pUNLq5mtCb0QVah7FZtXw0HraWMEYbKLe9sktcxpOS/qsNlhXIxhor2SI9knZZQ5wR
	 VtJ4u4hTPZvfzDvq7WUOhT5V0TIYL46XBHC3CcrBNS1RPfLTORGqIGKYa5AyNX6TbO
	 YVNnuvtaAOIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96861C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200213360.23800.1094969349597769011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f403ea8f73b9598995ed1557cf022343ae918ce6f5213ff0e5805951d744b87d
Date: Sat, 15 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742002133
