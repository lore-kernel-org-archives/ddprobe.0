Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CFC2F33
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658658412;
	h=To:Subject:From:Message-Id:Date;
	bh=Sj1/jnGc1qHB2qZAJDa80/FH91MIs+l7H8aTKxe1sYI=;
	b=V3D8AuLg93/GDO9V6nLcggVNVeEybUIn0EEYJ8fuWJkzQKpjWDnT0ucgNGvTsHzY
	fwOE3elHtggcxH4c2LFLXNHJ+vSj+o2hxOwxmlFVe64l1M5aPS9h8nI9a/Um2tojVff
	wka8cMbXUE9KgND/3ROfIzVaYrAg8N3ywtVzwSyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658658412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sj1/jnGc1qHB2qZAJDa80/FH91MIs+l7H8aTKxe1sYI=;
	b=Qt5laAyXAEkFzh/ClNGU9FS1J9/Q4cTHT9zYoTP0EZtB6DFz/CR/rOkCEOmF8wJP
	0hGeNuk6F0qKNAPk9A4IpAozS5p98IdlIXBwTQIIweWwWUVW5xxHU03eUQemA2lIMZl
	izlrgu1HflfpOLFRgg9YXotZ8g+skHqK5hSirh34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822fbed78f-b0a1f389-739b-4c90-adf8-5fabb5b9a6db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee60c3774f7395b149dc6d9f5759beea0b9057c2dbe266639c946c3629cd049b
Date: Sun, 24 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658658412
