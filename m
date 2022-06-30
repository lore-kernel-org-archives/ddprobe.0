Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22A5813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656566212;
	h=To:Subject:From:Message-Id:Date;
	bh=JCHYbRFbTo5LBbmccr4H1kN5MQ9hKIaKXbPBMoqt8bc=;
	b=HCs+4sfUOzo5NLw/VBvd+7OuInk/BlSV/CF09JFAwiZwAbnJvyIdCn3GkhF/0zTj
	PIU0oQJUnF8mk7xnf4kKbiSe/QaNHzfdVBtBj4sIcfF/u5P+ZcdUgHB5jKV1cj/7cYj
	KP4YM9Mc2rEzdGNU0ezm4h/UoPDX3CP6nbhsW1PU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656566212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCHYbRFbTo5LBbmccr4H1kN5MQ9hKIaKXbPBMoqt8bc=;
	b=YIx1x5clTRrhYeMBL+HJKT3phF7OPgThShaksAUNKFyETRcKWrOedS5gRclp8JPY
	nDxinc7uqiHPNI+M+V0lbD0mY4nlBODa2GTCqBU19fZB6Fbf+USpjVvJCzu/u2XkmQw
	Ecw9SkjDpu2cPrjA+EVYXRfGREdgpav++8TPDPBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b30a66fc-4c6d5c40-5e58-4d3e-a183-c214d774b690-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5021614aa2bd5b85663d431bacc16e6149057ceda83f6983f7202be1ba20af44
Date: Thu, 30 Jun 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656566212
