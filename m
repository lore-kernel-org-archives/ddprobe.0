Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F13E29A4
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647887485;
	h=To:Subject:From:Message-Id:Date;
	bh=vH8+5actLrW/qEvHlpxYQj78nFpsX1eh/QreymFYgl4=;
	b=gGDenN3l6m3yrPp76YDxb4wq2v8JOeeLx85+YoJlX8V+hzSunPzgOhYXNJlY8B7y
	y92kYdPcrULOgSKKGayyL4R30pky3QOwYl7afpVBX46nAyxp8v+W7EQPiFQBYUx0l33
	DgPZBvIxlZaFv6KcX6rj1Jtm2qDByic+xUi73NTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647887485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vH8+5actLrW/qEvHlpxYQj78nFpsX1eh/QreymFYgl4=;
	b=EEyUVjCdwu7tOQCY8kJCEkp99GMZUN1iBVRaBiSqawRstA8j9g0cmEJtrQ7w4AjC
	yUsECLd2qWXpEalhleYhlaHPXhycWzwB7s3imkToemioy7geM4+cyeaNFJUrZSQ5Qpq
	26Ha2DMcfi+n0VRKELrtZN9YgrLGCRHZBDQ1Vt+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fadbf872c-20ff55ab-3c2d-4831-acb1-0f6f7dad3c39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 215abaa2dbdd79d26045cb375cecf451da025267de585e444c7ee0cfd95dba49
Date: Mon, 21 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647887484
