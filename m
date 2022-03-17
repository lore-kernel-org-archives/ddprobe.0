Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5154292
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647519985;
	h=To:Subject:From:Message-Id:Date;
	bh=EsdxDzY4lWoCJpjIYwVtOlEgi8REwIgqX3AXVE4ea1o=;
	b=LM2xy9bhrGAlWFPvx6jlKanTWKMSw1EaC4wtm0dThwaP0ojxbUxSqkfNYSTUq98v
	8PqTibyR9/Spye4TVGNJenWoqXFmuOmFTbLk4vWDkuPpZ3+arogA2C1llYrP0I4tYZf
	P9c54WRldFppUq8bM9Qi1+HXBoamkqL4/Ng5Hhr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647519985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EsdxDzY4lWoCJpjIYwVtOlEgi8REwIgqX3AXVE4ea1o=;
	b=a3D8RAbmFrMB81ZLMd4c1naK86iiDoMLFaHgC1lLSDxatn/iqOwVKUPGjJ5Q/laX
	B8b//uOV7emJ/CBTVN0zx240Q4gBPdfZj4T088oGUOgbIRC1NV/0zfhXvdTDG/V+xRW
	CraWHZ+lLh0uRyeIUUp8we7SjMY7byJtC5rmR8xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97d7ec74-3faf1959-4de4-4f6f-a45b-3e6e90f34142-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 732db728d3ff07f6a62d96f8646bcc96380f4e127cc0aff02eb6aca8cf0010b5
Date: Thu, 17 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647519984
