Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1454B36E
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 05:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648618618;
	h=To:Subject:From:Message-Id:Date;
	bh=RpZUUR3+Wu984ifde8oBQ9tTqgEeim1zLlBgJjX0GVo=;
	b=T95QpARRqnj332nyDvFcOjlplTyvYl4y1Y1ENFrLJklBvoItwHJhqqXSjvZEAUMN
	v2ugxJA1pmhM0lDFTsRo5maY345duFwQ7723gbCA5MpmEoB/PHqJmbjcM5fnCWveBdC
	XVi1aeaFK6Kx9muUp7LLpGp1ov2tOYsypKfwl6yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648618618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RpZUUR3+Wu984ifde8oBQ9tTqgEeim1zLlBgJjX0GVo=;
	b=Gs8vk3uKt8Sy7q8AxGjprKYLPUWS4zJzkv08vsAksdlMmFyyUKcKluf78xT7ac6v
	YYkWpIGGdxQPVBI8QYYAkayOEABbGkNLADjXbIIaC74XgOPUPupNeCR/jIeDj7ETqac
	lHnMz1P3iCqdlD93HifpXJatVxulatIMiN+QvxDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd953bd9f-6b1d6d65-718c-492e-b18c-ffd17ec6197e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15b4d09525c341415b9772123f1dea078ea926a6779114dd3b9c00380badfc8a
Date: Wed, 30 Mar 2022 05:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648618618
