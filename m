Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D687E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658642812;
	h=To:Subject:From:Message-Id:Date;
	bh=1Xogs0aMcCyDFFXAkmVdEffcZOG0/akcZXhM6yingik=;
	b=CPLPhrl8DcBlpFwHBZotgzx9N7sfXpsCp+orNQgtHql1CR4kNX6tUIBKeoRYeNpz
	c2h9QblZYu+9Mc/tor5Uqnprv+WwWHqlDjya5XVWDHD4DJsjeiPdJVNaX/j/+6EXt4x
	noT4+LlcX0aWUl6ywHsVcuMOo2+fHp3/JNTGYx2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658642812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Xogs0aMcCyDFFXAkmVdEffcZOG0/akcZXhM6yingik=;
	b=NMp4ZZXqGQSr4HuSixxxYGIi2u0hlBqMU+z30gtkGAO/84t4u54eeOoYSFPHxuhn
	+GxOWjwELnY+7UhZDqt5Qhvuv/Eo1dKbCscbfc9D4OcR6/6QD25O8Rfjx5xNo/F62xT
	lemeoZ07IaSKjpVCd9PA9/Rp4X8XufbUIbboBp1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ed0cd65-d43700eb-ec5a-4e80-8d44-d56ad030f6b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3528d4e43b170a422b034910983e6a9b2e227354b9018d8d5b9be963337d4c8
Date: Sun, 24 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658642812
