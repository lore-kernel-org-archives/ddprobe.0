Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF7B20E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 21:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656364012;
	h=To:Subject:From:Message-Id:Date;
	bh=yeehszm3lLKwnGx1p8a4QRVSOKE13b/S3z7944t3s68=;
	b=U3c81LP6y85opaLA0GrrOwY4df/2mL1niLwvcsKackDKz7uk6boXlz2YVatnGn9N
	yW1CFAWXG4c/ciaDffGZBIu/diqsUxG1jdC4YY/WgugGD4NkEJDZQ4Nsx4vqsijHeFM
	LOFCSjmY6xB8eTaSCMfY2Q10wTUFb4LerLj4aBrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656364012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yeehszm3lLKwnGx1p8a4QRVSOKE13b/S3z7944t3s68=;
	b=JjhAnicHThEUxKbxBHQdyNMXzFCp5bjd2Oiae97EtxxwpI6153zu/Sxbr91UIDhu
	JaJ5lqxrxhqtxtBTCY5llexdINk4cycewSxz0odZ6TzXJMTrT8XJ5rEr3fZw3Bui0kW
	ByoenUXY3xZpWrkKYWVs9U0b2mv8BMCRjxrPaRkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6fd12f3-55e552cc-56d6-45f4-8022-b801385737f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13775be391260831e2c6595bb428b34c79a65b2e106123004ab59544b7a9bac2
Date: Mon, 27 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656364012
