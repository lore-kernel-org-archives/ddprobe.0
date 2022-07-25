Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EDF1375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658757413;
	h=To:Subject:From:Message-Id:Date;
	bh=CZ/eGa29X1gJ2EdacqnHuHI4mkAjwWVVp+khNIcn8TI=;
	b=SRa1njzj6TRsRg8XgQudmkVy9gkhqnR4kBz5PEdZwCqvcnbAXHTajEvSUJCjNuE3
	1ZmugjhSBGoif5NDArtk5g3Nqw4ebkuqNMXb2YNi7TEtX34S+SzXoBnHpqypaNFcUnJ
	oYp23Ft5ERzXbS9dD6BRB9alBYBP+pZAZ5FaMJG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658757413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CZ/eGa29X1gJ2EdacqnHuHI4mkAjwWVVp+khNIcn8TI=;
	b=KskXmhhchPo2N3CtPztPuWnxkaFeCFGfMoeZ0K6DKc9WwEBdQViT53eGzla3350s
	MdjLMWIfA25+PKIRQS/liCEPFpkM4vTNsLZ1Z570qjY2yvwlsTE9Eo1s+TV3TIH8Tm6
	q9eS27PtnwVr3cWeFTkTWet5GizN3KNiuwJuvx4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235a575a8-ea3ff36f-4d0b-4a0e-b504-92149dd46a76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fb3ed02775f0084dc39cb34b09af7cb76336194feb9ff6f83b7f5e5f4a7e767
Date: Mon, 25 Jul 2022 13:56:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658757412
