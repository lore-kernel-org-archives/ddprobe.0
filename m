Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33DD5BF9D
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q85QHN6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8637BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702925296;
	bh=ornIGhB04lLSG3Z9sr17PGLvE88rRK16TJjKQZyGV+8=;
	h=To:Subject:From:Date:From;
	b=q85QHN6Z8wF3mKfKX505HjftfK4BAsgftQyNDHOKxqPNHP2dIlVqtiJj5CAT+yx/m
	 VvATocmm+l1QynuBx22LIpoqHLPhxRZ3t/a4fQT0XRZcGAsfGUgsCcGizmZQJabI6O
	 Zg5Zgt/ud8KmKgkXfqagWV27IeAIist7dL2qbqdqvICSfeq6tFTr/a8+seHn7vb7+l
	 Iap8gV5gTc+61ZD9DpfjWjqfyVsSz5+t086Ar0qRrI9AaqLh+7+8KagaZxliNaqtKb
	 +ZyH22yM8T0z2lgA2sXt+HdsWP0Ac/8p+wfk2mzZ8GSS/K9ra1jfAQpjb3cQ8Cm8IS
	 vFk2wlJcrYosg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A14BC46CD7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170292529641.23514.8484741333853206998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322e099409bc5000e4023879d7b6d5466c51270b1b6d0f9273fc8e300c8e6b17
Date: Mon, 18 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702925296
