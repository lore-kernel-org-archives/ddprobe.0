Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1903C387352
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772722494; cv=none; b=LX7PkhAoGJGvs07Utp+mW9MYH1ZdkFdNOach6GIJ69977i19Y9KkrvdFPDyhY5ObseI1NP5JbG62nGBZn8PzkPzguG+rx/VhfMVRmd4xHibrXd6q1quaTWrB0piG4esp005oPKgLI7t+hfQpUMC+5SXgJnGmml8GdUrx2JBal6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772722494; c=relaxed/simple;
	bh=Rll3yY9rQ9ppTc296iKG+wPv6QH2k2iu8GmIKAQEV/E=;
	h=To:Subject:From:Message-Id:Date; b=ZK0CRawIRgL9RUmSWxkfnK7WSiZu3hxI+NoV7n6OkJ6CxZGtdxfJZheS5OO7NICtQ5she28z+WUhnOk4cPm0ya9eTM11lKuP7SZT96UlPVjuveW0glaHHkhWSjwNl6+j2fItINwYP9RMFj2SVIClWxvcaCKu4jSxEY+I3sA6Zvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEe6/iOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEe6/iOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772722493;
	bh=Rll3yY9rQ9ppTc296iKG+wPv6QH2k2iu8GmIKAQEV/E=;
	h=To:Subject:From:Date:From;
	b=IEe6/iOnJjXaQsvEP/V4E1BNbr03mjyVOGPnnqZL2hCIgk90Mw8b9++8wQSrkZocb
	 C0TnH14C58qVnK6c5gDnP88KgNPR2kdRxdCRDzUdBe9jYj7YYTIegAsUbpsy2Eeh0L
	 fTVlj8yqf1pyBhWcSYN7ddS/v+nX36DjnfcrJ82lx/Ecqkl4DGMK+HnJ50rg/Ax83E
	 963ndaJ1XGkQ5qPlHAuKWKefG/BIRJUW4O6oVQJimPVOsYAqHhA1V4h6rVKXjmBUGM
	 kocbDUJiMOlZG4f+LyCc7dGb/4Rohvg0gKTGoBzUqJ7A4TIjoHqEoiV1SNSGjekUo5
	 ZqQdO1pRwvZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F02F33A7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272249359.8741.7233783925582936146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db71c675e6540314efc10e0191d44ce85f5e5e1805dc9e85cadb767870ce2df4
Date: Thu, 05 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772722493
