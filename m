Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43412C8E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742047734; cv=none; b=Jz8bXFyLGJk4qbrhRUb1tgnUD+j5hVvJgFPiWOXjp+LriO0Kpx6V3Elt9ThNTDvfJbEOU3g5aKcUr2kHBsscIFgLzP954HDdoszPKWVbhTSHLrs/IfE8MvPbrFu2b2FQEAMcLdERHUsx8f4oAEuR369+lCplE6+9VQIJA8ImqaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742047734; c=relaxed/simple;
	bh=YrCwr/rVnaZWm++HiBbgoUJ7mkZ9KeAHwHSv4ZUkpHM=;
	h=To:Subject:From:Message-Id:Date; b=qIoiSuoeKvQfCvc8VE4ZusLZMqPbdiFNjCGORZhAJVHhmyhpF1X5yAb6kaecLwFhaBMBr6zt0lJ6qg1WzbumzchzHCUKudJLFMK18DCLpXGuj5MZ7kDDrLa+oLBfVb7Wh5yclcZ1Eb6xDZBtXIDgMbYrOYUdt1LIkAfJI7ExTmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNWKXgnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNWKXgnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F30C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742047733;
	bh=YrCwr/rVnaZWm++HiBbgoUJ7mkZ9KeAHwHSv4ZUkpHM=;
	h=To:Subject:From:Date:From;
	b=XNWKXgnQrfhb2zb2UpqN61sVoYmvjaN1tr6aRTkvV0V4vZt2E4ky/oX4Gc4wzCAWZ
	 7HzwszyWvwtpRXUMXQVnNr8Nc+WQX0pYFWxX5WZKwQUNFaq2V9/tgnGLJxto7/qJHf
	 MTOlYE2+I0g7ZWSvAPivgmjUJ4ojleZ85tyeqAmuXsWRktV8gSZVSxbnGovVwrsZzz
	 IY7p3fytQSh69oALIKD87ChlWwCmRdbn4+mnQzMvYaXBjkw/CXHTB4qDXphQg8pQBM
	 OvvgpY/8fTrq9lAjzYwBins1o9NuJBuv+0amyxSqd3QLyswWCHMMvPAgTtNoA5C5pO
	 FARoRCR2uSk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3BCC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204773359.662.4219658567364432605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606ac7fd66de30df6063bf3130fe26b1197ad2f5ed8df05670a68fdbf27878d7
Date: Sat, 15 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742047733
