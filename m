Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2163451CF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773902094; cv=none; b=gB7ME1Vh/5pZbbMrr96hxxRmsXs/siTWQLid4fMlf9qf5uxblkrmhnLlaR+U1sUm26x97G3zfLXI5277u5VNtSWsq1YpBsXDgp38QHDE3xtiLzGylqpGvWIFJdCgVYWu3LF5PbbiXzFW6cbvQdnhzb/CA7cAP6ii9xK7BlquTMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773902094; c=relaxed/simple;
	bh=ZyYJ49eF99fXpL01LU/0Iwcai+y8GIGnPF0dNzDwjbo=;
	h=To:Subject:From:Message-Id:Date; b=LdM3xE+E9EIPpHulnR805m3VrQ2fwjAXi0w9FTWzzDmOLUnu07bVAzCglBN4r/Y73exeg7H2NarOAH+dI94/VWjvVywTJWZoK0hlyYJGNTI6mTxBwKhX6K4tZLmc895J8hvjUUK1jC3u6PCnCHPI903ahBdOpu/yeR5WIv6EjhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEMJhE+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEMJhE+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7BC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773902093;
	bh=ZyYJ49eF99fXpL01LU/0Iwcai+y8GIGnPF0dNzDwjbo=;
	h=To:Subject:From:Date:From;
	b=VEMJhE+IAleTi1tYbXf1zGEVhwtOS4s/jwmR/CYirHk79SBL3Ynqi7oR/I+fsn9cg
	 +QFaFg6jXfp6MNTfo3eWJChW2D4jHvO4DORlQTYba6IFfyFITbHpJoNEVzMUrSWD2g
	 BzBuOj77bmIAw1S/8uh57tVw6++QzYt0XvgBaclm3wiGR5cMDRyYq/wqrvYczYqDnj
	 jNXj7N9IIzC3kM5MI8jZqDI2LY8PW1aJnissCL3IgXdNp2SkKGo657eWCPbb3tPVCq
	 7mw0v3RfDacrma64//iuIFxOv1XsorfgMhNgU7l8B2IjLrr3oCU6K6T3ahVUy9TQ6X
	 AXP6kLWVZdAgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B451075261
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390209357.3343.11348806338096641015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb1e135cb68ed4e66214e9a6ca7247d95dcc97830782174c51f035132bae702
Date: Thu, 19 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773902093
