Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242197E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658609212;
	h=To:Subject:From:Message-Id:Date;
	bh=fE7scdiwOpK4f+K2yaPDNpQ3mD9gX+6UhtWbR4pduX0=;
	b=hBqoGstyVc+4o7cOcsFL82z33BQ+wwTQrHH+27Ct8PVetxZhDbPNvFYoRJJVxDJ7
	dIqKrvnnK2CEfm/VgJtn5Nm3seiOVqttXITB/D7IoY+Y/IXAozZ4IusoasNbKaOHjLg
	Eo9zR79uZE9XPmaO/NXoAimITqTLtPsqJnFkPtFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658609212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fE7scdiwOpK4f+K2yaPDNpQ3mD9gX+6UhtWbR4pduX0=;
	b=hlW24b32jat06ZXzi7/tTbA5g78WZ8JsTzB6S6I5yQkihwZUIQuR71NLd577Jlny
	zDA/L57tl1vMMsbbZ5kqZwgg485bZaoga9L82RycBnFtqk2TZj6bhgJGNwgYyiInSoz
	VTd515WHT6Vq4Hj2tT+BJ3ElRlxpbsRzURWh1TxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822cd01b83-47bbf45b-17e0-4e1a-b4a5-0398be2ea24c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a31d2628ea46df2a3a5bc0ac8892493bd262d141c01f27a21fb73ff07f15c88b
Date: Sat, 23 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658609212
