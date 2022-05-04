Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EE42110
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651657798;
	h=To:Subject:From:Message-Id:Date;
	bh=KfNZIdkpnESs5FG1hOKE4Q5SkI6VQCpMs52Ggh+ytGI=;
	b=J2Z1mt7l3Vqf6ZKeIAqM/dAZHmImRCZnUFphWaPd9wiYAr4D6IfFhV5Vra+Ajt7C
	Vd9l96kNmJzYGZSuMbyeWJHviEPef80TMAcxx9bPb4baEPWF3RY9KPkgdx0repGAD0F
	NA2h8Y9m0CfNXx8RViWU9C7cdttTua7q4oJpmi3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651657798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KfNZIdkpnESs5FG1hOKE4Q5SkI6VQCpMs52Ggh+ytGI=;
	b=S66lVcj7TjSufC94qHmI8wtg6asPJ8Zb2AjamBL0pSu8S7PecboaLxo2Hwy9VmS+
	mjGgfv/GkM3P0r8sR1GRgCFxS7vRDgkTP2lLbouPtfG5Y65/Hdx6nF1FrZ7YUgKWszh
	RUOZ6j4v65sI+FNlrgFe1uEcuum6Pl07w8DJnn2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e79f2c0-6056783c-2644-469b-ad43-aac47069615d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32d3201a2e6831105e49ce0097fee133c0f896b4638783edf6c798f0fb775f17
Date: Wed, 4 May 2022 09:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651657798
