Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185BE7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654931879;
	h=To:Subject:From:Message-Id:Date;
	bh=if0dG4ySzgBJsNdj2m0oscKsWddq1bfGz5NPO00DCog=;
	b=Y4j+7fSs06CAXj32RuJaVi5qGy40JqfYANqIrADByZoWlVLzbRmy3Q5UCqaiIev7
	9GPP+Jo3c2NpjBuRKto7uXfCh1tSzBPTlKapmqVZcdw0KOhp3DzFeueXPHxTHLZVslN
	0a5xlmAAxuqjmLN6+CgOXayV6w1p+OW81/DEk8c4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654931879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=if0dG4ySzgBJsNdj2m0oscKsWddq1bfGz5NPO00DCog=;
	b=klPiiCYrIaTMyW14XtRCjRcI2jhxiL/+MkV1FpOlRBO5l1zKXlciT7XSindy24cT
	pEK8EsLH5twycl09K1cCURM0RBtDJ3RsRNBZep8w2HJhjlLWezUx5CcfdasOz74u8gJ
	KBuEDYSioFuBfLSRtOtk9Tiix5wUfsIwpt+k345g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151a0759e-e83264b1-07a6-46e3-9fbb-9343497ffa8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a19e5a779c3948b525c4e1fd5efd0e50fc5265395c131a0cad957d4e7ae702ad
Date: Sat, 11 Jun 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654931879
