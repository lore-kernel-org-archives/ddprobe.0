Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF9412CDAE
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728855954; cv=none; b=USFxs/4VxbA1YNrGwUnXmNTo2Aka9PQJWGya/o2AdC1Rrn02HkAXOV9bLd5z7x8Q3TtD4YtHrXo57COnljIRU0KKEeJ1MrKGGx8j3/SAZv2M2J4LCvMOBt7uZca0EGZ1QTl36iWgkK+aMa+K5SW3ekyBxj4wdu0JQEReky0TqnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728855954; c=relaxed/simple;
	bh=GjPQs4IwDTFjgybRK/pKWD0mkOJ799Y0nfKM2Qxx0xU=;
	h=To:Subject:From:Message-Id:Date; b=hzyHvB5qTRizvQwAud44YiSMGLmfKlE7n6o3X+Zrs0I4rg3iVjigsQJ026NUkHNnBR8nzftZ/MtKS5XEE734lxAJe/CNpFIQrcWWcfTP6ZdVOa51Dm1wPRFmt3N0Wx4/PAISmdgoy67tlkuGK8gWqQWwKWi7yDYqBQV1862NXOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFwLhBDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFwLhBDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A952AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728855953;
	bh=GjPQs4IwDTFjgybRK/pKWD0mkOJ799Y0nfKM2Qxx0xU=;
	h=To:Subject:From:Date:From;
	b=FFwLhBDcdwySagy47DmXUy/xv85IjynJ+r1IRAbfqhgCSPhb4jR6IXZQ0Zvlz4WUa
	 X974IrMcfVwT6AZqoprWpEecxfb9kR8BHf7+2ifzqD41jn5hyPTFmZp/Xpq7IyDE5S
	 dn8RaSKhcVZFiXnijJMPb6S9YoYVzDz0RLxhPSA1Mu1pXfbWnIjMPS093m0MydCIEN
	 jp3eGGIuaKKxuHE72nUOdi5b+cOjZXmayWIW28JWYe2EpIIBpmBCBe61aK0g+Tj+b2
	 V/U0GQBU8Ea7ZqbqtjAU7jvvXrEhhu/Zwnl4AQjgYUQG33MktN0RV+5oKnoPF9+X/P
	 2LwfKJievalbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC8CF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885595360.28868.2747707848354059878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4122d7169f05b603869bcc0f24cfecc53762798f035c423712ab41e6cb2cb147
Date: Sun, 13 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728855953
