Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F37E7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 02:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654049519;
	h=To:Subject:From:Message-Id:Date;
	bh=zQlCWM35V6rMXI8atL5T6aWitaRHGKM3lyNK4c63WM8=;
	b=E506eIkUf7BNd9cuuAms16dLFtIyXQ/l59UuvGS7anKCPaDbnoZqhoG04pcrxWI/
	3YfJRZNj8bKaSZT2apVbcxPo5Cs3drxHovMqi/6B8OZr64Eoj5J87ruJEgyLVu5DjDz
	I31xfNZ5qg6Ik6i0BWmAKfDCPRAdzy8U+vRtWgRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654049519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQlCWM35V6rMXI8atL5T6aWitaRHGKM3lyNK4c63WM8=;
	b=NIiYQMAU6lS92MQ5gVrUIZYBcWHesRh1Vt0Ur6GvPHrg4DfwhE3essFlulVb0vv+
	jU40M3YJr462Z+EPSsHD2yvUOKpnHsuArXqQo5sQvbeX4ZI6XXrr8XULf/ds+VKtRXl
	oeyhH5rqxaPBOPnnT1THi5rhzymTCizK2mmYjma0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811d08b6be-1da4841a-b931-4501-bb30-95384d69b4d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceb23d8b4ad78e7d77d1fbccc9ca6d9ecbfa05604af5c379c6442ee2ff03195f
Date: Wed, 1 Jun 2022 02:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654049519
