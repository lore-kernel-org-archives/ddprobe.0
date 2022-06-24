Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C74628EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656080812;
	h=To:Subject:From:Message-Id:Date;
	bh=Pq8RBDZwnMJMVQiE00hAfd+DW9vbk9Rte1M9dyBvhe0=;
	b=MPMG4dFrUgjFqVXYF2/PIqpS9FCPnhcvaTWrA8Trp06W8AGGryV7JbxEoviCD787
	n+33i3e27DBhWcR4YDeXXSVnM7ws13BF765kv0ioVbUHP5Ll5NJHUPn2Vk7m5uhw+eO
	EpnEOoKVPO5M9fdtN0vgY1n0whvmkxXFhfhm0nlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656080812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pq8RBDZwnMJMVQiE00hAfd+DW9vbk9Rte1M9dyBvhe0=;
	b=jbiZNobZows3sikS7XV9NWlDAYf1LE3KRlE0ya+w3f5NVFzxFFEBySTOEY023jME
	KEzjnT7occw4xsDKZGUh9tf03ZnAnYzpllZuK9S5HxM6uxrRCE8FaakRdNUG7SW6gIi
	jLjdNAOdemnXcxfvLX9Uq9N/arpfr7eQHdRwpzFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181961bc914-26ab0f52-7bb4-4686-9fcb-a97f2fb59714-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c459e60df93dfb61c9df6eb0c3af0cec5c31d09685d88d238686d301cc422a0
Date: Fri, 24 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656080812
