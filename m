Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1F3290D2
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778992234; cv=none; b=WUJX5PQwzXflvBzObsk9nrFo139+/OP7KE59X1d1qsAc3guTa9K9M9jd26tTO2vr5Cs242eN6QLkyuGp5UWA89k9mPGMxZnO7vB0TIf6J0Irs4vzATWcX35G/Pk5ZV7L7n1w4+a635+yln4sgUjsXcsPK/uXv2OTlrEdBtHyoNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778992234; c=relaxed/simple;
	bh=UupkxmBvvH7FpWI0SEi1tkZMKPxd3F97c/Lqu/aLuyg=;
	h=To:Subject:From:Message-Id:Date; b=ScxTYQ0+3Z/42aRtdcmuEotV1KdMRfCwhouoJBbByx1ekxu2Rf9NLSE/FVdDQZebqcuzfyUd3VrvfztU7JFVJtiYlG1PDQYVj7vLCpcSIUkKx/AlOIssi8BIRE1CVPEqPySGZIxsDsuCqiFF7eRc+PNlZvEnUBs/Lo/F0EY6III=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUcDdb2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUcDdb2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D147DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778992233;
	bh=UupkxmBvvH7FpWI0SEi1tkZMKPxd3F97c/Lqu/aLuyg=;
	h=To:Subject:From:Date:From;
	b=RUcDdb2Ov3Ml/Bcvb2U3G8MZHMc7I/UvI9G1uvEY+lJaWEm1644y43HxFvDrxjQLf
	 8jI5FD3qAYWQq1IE8SGjJCWJyPycVYMj6U6/iR3q7A5TAIsZ6ypCm40EZ9zRQEOAYE
	 dcT8Oq1d31h1K1Y6JWVmEiCax82iAXdTP+cMmlD4RDq3EB+R5x9i67qAEyZwWLf1FT
	 AigQXUJZcuZiYN6LiDG+mAwsGZaBHuBY3YpmL7JlWjfQuSyyhLXbmbHgaxdn2GECSP
	 8WcVBPRIxlMXzfLT7YfiPp6gPYYrPALBFf4uBltXvDOQAON3lTmAminYQCPM4bs8D1
	 7/ndjKl/KtOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB692CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899223375.15553.801808781049832794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2c00bf5093e115d7c361bb5bdee4c0f65ec2030a99d81b8e5b95ec8318f0c1
Date: Sun, 17 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778992233
