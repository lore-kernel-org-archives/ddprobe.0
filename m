Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981D7510E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647627984;
	h=To:Subject:From:Message-Id:Date;
	bh=1Kc8vWtMC8apgxXVr/LCB4W51ImSRxWucxDm3EaXdTc=;
	b=SQWJ52uQxSgeWpnWg97GLW7KkGLXzg1eAN7P95uPJeOYAhHnyT6Sio8PMybZQtlq
	UZCSiA/hxGi2KSAGibeGZCYFcR4Xx/usz26xqIAeu3eKQOA4yTglbzRj71TZ3HKjXxE
	YuhgG1sy90UTH2aac0CsUD+4yyh+Rh0iHFg/R+hw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647627984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Kc8vWtMC8apgxXVr/LCB4W51ImSRxWucxDm3EaXdTc=;
	b=fUGXx/l2tcTltvBO6TiNdVOqscmxydAhAAexQQzbikcv2wBo0jGlXo9LPfFQnMja
	zaRWn9AjuvHPU82JmTe1639hiR8LkOq/pGdBviSTmVwmqxmPuwj26rubIgeihf/d0aZ
	fUyQo7A/oyKlC98x5ryKeFcZF8ET2L9HCvo3VZfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e47df92-364cd0c2-af86-48b9-9df9-10aa1323d964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fd01efd933e07848c8ee48805587c9d1739d5b2e9537aed74ed92391eab49e4
Date: Fri, 18 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647627984
