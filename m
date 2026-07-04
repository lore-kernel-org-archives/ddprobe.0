Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C45C25B099
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783186114; cv=none; b=OX14/HVd5e9IIvKvNteuhdqPcczIhtyMCf0N4RgQZL7lfMntn67HRfakyLDaM039/722PsVq1RpFEUhy9AvxyTIxnWkpjrpm5RV9gX72wBSg0KxLwWS7dAy8ClV254+9KHE0u+vTf1jn3iMRHR0NjAJ3NURDl9za47CtUNlFJz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783186114; c=relaxed/simple;
	bh=FLLaX5MNBqq/gH3RvgzSsXwUa+mjFaaa+4gik7MOTOU=;
	h=To:Subject:From:Message-Id:Date; b=F6qkpXEooUKFPZ1TOVFXJCGezfKjVz3z8VGOXP3T6zYj0GYTFxxXCIkKBD7e/jqyXMtJlNjqQ3ns8qykHceXtLe8jHj/XVdO8U6xqGYwdWIi4OJjH5Rl+SCFFVp6Nue/RDqbCbhn8DUumdyxoOwYd2G2Yd/mXiOyuPUJTxXQWJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2bclrfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2bclrfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE00DC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783186113;
	bh=FLLaX5MNBqq/gH3RvgzSsXwUa+mjFaaa+4gik7MOTOU=;
	h=To:Subject:From:Date:From;
	b=V2bclrfex77gMr8W+lB9yTyn9toZYAwbNiuNv1aSLVs3uADyzH5Dha1+5kHXLVnjv
	 hud1vy7VV0bPusypM6BYrQ5BlyUCgesP0DvzMH8P+A/Pzy65OpM4c0f9Ghn13AyWBj
	 LRw068T0BJr9Vyq7v84tkuyzdk56qCJIbkJklm1wQwSD4n++bNguxgLRRFG9Q2+i7G
	 rrTKHpZ/w+SI7mD1U5WGjL5veDT7yYKcYlzto45HLGzOWGOCYDnzC5BVmOtgS4NxK1
	 74cNBGdwcfawv84SrOhdrMbBIIBq405OFW56JUCzjl6vtS3azQ3hoUdcRjKF+lVBey
	 OZxBo1+wKaKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC8C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318611368.5134.16040637919914242241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86f3809899da8240f9acbb58fe10bbc7303fb6395176861ee1a11ad1af68861
Date: Sat, 04 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783186113
