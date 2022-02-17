Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD513B41
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645078885;
	h=To:Subject:From:Message-Id:Date;
	bh=Bbs/XK4e1RPWcuLE8lvHxStAso0LUgkB+IsNtMWgyA0=;
	b=TekDxQhHYT6uJsg3uD5Qtj5f0D4Eah8FZ6t8++Yd9iTuaXl7fZTy69tp53vDhiKS
	07atUq7sv/KzaMGUttOJGyLh0Nhi3KZAKQuVebFQoc5PUF2xjZXonuFhuyaQnitewCM
	zQiPwWsZfqXJ1Gb8lh0QDl4SmwChqBARAJ1zReeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645078885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bbs/XK4e1RPWcuLE8lvHxStAso0LUgkB+IsNtMWgyA0=;
	b=EhbAd67aXJMCt0fHXks+hHT63ONpLKqDnzhkOyfAwElSTSgUBlLm+AAe3R+EcOYN
	Eq1p2Opr77ueRzmG2GizgRTuB/25l10QnYc9XdqXJ6g4E31jS+4uMguvwPtVAEw5s24
	Yn2IlmS4HXXcSEIbwQJwAqAi0xVzNdURqPjX4fqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0657b1c1-0545fb8e-7c7c-4799-a5c9-9de40dac2b5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e217a73a2aac72a7d6da68db02f3c80aa15e68e021dc616649b40a656eaa48c9
Date: Thu, 17 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645078884
