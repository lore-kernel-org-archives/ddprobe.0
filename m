Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9FE2CCC0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732738554; cv=none; b=WDqnkwL5RtOruHFa2N1cK1TZqsLF7wATTKgAy8HYh5HaKmNCkJE9u1Pu7bxYxtYsYXt6tsDo7jmN0bseaklGf4ykC0PmizYfVoNc/bwj/2CMtNkKoFn1oxy136mt7afy9udHBUoh4oAvZh8qTnco9rW8P2R75VkF/vI8Zb6/4Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732738554; c=relaxed/simple;
	bh=6OzLMLaRjsMbrdoJlBfsU6siaoKOPXgTsJbgI4UDt0o=;
	h=To:Subject:From:Message-Id:Date; b=nDSI3XGY8rLRVHAhwp66Qy1q1g1Iw5aqd3ibyGxmswllVihO6FeikdYRMXhbK/0t7tQL/6B5mdE3q7F9arXFgxUB6VKUevzOsK5APUx4AOQQdZSVgwAWJkaIZ8a4VMni97l0sIRZRPSVIE0X0NgATSsxHGX34JIWaJsk0AVzO9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAXPl0tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAXPl0tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB275C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732738553;
	bh=6OzLMLaRjsMbrdoJlBfsU6siaoKOPXgTsJbgI4UDt0o=;
	h=To:Subject:From:Date:From;
	b=oAXPl0tbwsJ6aLPv7X+jtnUxz0QmzuM7RJ1/ZeJ4IPMcLTmOXNasU16CE6Q0eTrf5
	 NTuzPuRGB6VLCjvcVvxV3RrJcnF/S31+xkStDvtUN0BHASrPuDg/rO9ryELDGBMxR0
	 XNJhSCSPn+3r4Hh0Fn+VcEcZRsep8YUJijNSqfRsTUUw7Hl7QDip+QF4eajqLNm4Os
	 hWYtys3dDDwAsOPnBT9wuYUKSGB5741Ak5vp8qoFL2ucGjne2qPR2jRscpYkTa3K9T
	 rZTG6WiuAcdJCZwI7tTQSKnig8xGsfwSwWxGD+wNuoMdc581xbPAzC1WjVYoZoFAg9
	 BjlMquC+g5J2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215FD6D238
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273855359.15952.5255575847154231148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b11f90054eb6f998886d55fbfaf0a780528f9caf76d053beb507700b7566e4
Date: Wed, 27 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732738553
