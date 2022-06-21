Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24E4EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655801519;
	h=To:Subject:From:Message-Id:Date;
	bh=XesBHX8Z/neTL9ui64T05CeDsBulZZCqX3BLS3nrZaM=;
	b=SaX96dKOWhuJGFLA9/isWOlTQZ+r5PqmXqOMTH0wBUN0Sht1o/AVTQ7SpLsVtlja
	fr2hrrsXjJUJTMaeWjsyVDT0nbiXH4j4DiywsFIwjqk+w9hVyo0JAIVaHSpmnGaDZg2
	9c0maiBcgnTbp+hjQgNyV3fiDMH1rqTxvhaTFNhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655801519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XesBHX8Z/neTL9ui64T05CeDsBulZZCqX3BLS3nrZaM=;
	b=BTZZy6rCElYOAbOaRPywO8diRyNbXb8r1tK0kaIdLwn/HvJlAOs4f5V6VXm4G7rr
	uyTIsrfGpqvMJRo4fZTGSb4w3zlF/9ZfyMUv9ANNCQdjcwjzMeAym7zCw5T1NAhVvtI
	2NdOz2/mnLqDLzxaXHuU6WwGZIa8ejjMr1MA0WX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185761c5d-fd585faf-ec7a-40c2-beab-ce26ffad6481-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c3ec27559b68344da13f377dfbbda85e9a0ad6264b223edd78b89bcddac2974
Date: Tue, 21 Jun 2022 08:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655801519
