Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0AE57EE
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656716812;
	h=To:Subject:From:Message-Id:Date;
	bh=pa2Q0d48o7Oyu9TuUqutUUrFNMm8v7k9IxcxsY4d0uI=;
	b=MeJDp/hYCn3TbFIE9ecJJXMfh3U4hMne3suHIs5+WDisyQsJc4Gc8AiGMw1fAM2F
	zubBb2wwCbzBVY6GFFVhVkqLalEMZGYnHXx6Prvf0DgD3mKQxSbzhRHaixY+oT05tNR
	QL3Ve+IrQY2j+3o7DjSv6mQMaNR/Qhxn+zktC96k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656716812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pa2Q0d48o7Oyu9TuUqutUUrFNMm8v7k9IxcxsY4d0uI=;
	b=f6Tgq1glIzHBeHwNiUUmc10Nt2fmVnEgsQbwZiKFGTMIkH84Ebv39DQuZWHCMdNh
	LB6etYCULYATlaMtmoFYfsOKxVGiW5vZuqwi7tPu0LfjxpSFGe8LOfiLhp9n+JYUxzd
	eNP0+tE8iNgHthzDeZ2G+3muYVc0FeaLLwSrxKWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc046023-86667373-f24e-4115-860f-0beaaff2b2d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fc4439033036cb6438690ac4b415fa2554efb117efce40172a99555680b281e
Date: Fri, 1 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656716812
