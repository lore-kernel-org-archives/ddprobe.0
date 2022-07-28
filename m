Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D210E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658976652;
	h=To:Subject:From:Message-Id:Date;
	bh=6p6e/OPbcJ/WaWLmxwAWS8kCPRu6S/HjcXBU3J9K990=;
	b=NtJJiL6daWshSs0KcVy/NrWvDO3tqFG/HOXuhEjoUJa7AixA9jXlXfBd7L87tTO3
	D3+/xKBOxVyG9CODbp/p/wx5+TX+kGiA2etkxNDlyWwmNABAZ4bk0lzhuRX9i1RyQda
	WrJB4yoYD+rEHDlZNDinTvsauBQ1uNK/jPzpu9c0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658976652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6p6e/OPbcJ/WaWLmxwAWS8kCPRu6S/HjcXBU3J9K990=;
	b=ih2W2BWZqbEwK6x3MAywooXIxChT5CgOvsV/UkLYLUdGK6qorHpXwfNWfWw7nHHG
	aKLKw72YZf13tCcEjqA1hwSYr8Fb0sr64SeE/Y3dv7R4VCqqo3D/Im2U6pDDXbNgOZ9
	xAEwyUTwvL+ON+mCsMZlLWp8z7r0VUyQPvvGlOTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242b6cd0f-6628638e-2d4f-438d-b6fc-afe29d20b24f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adb7a6f3fbfaf2375f3dbc26fec38b59273763ca8187f133df05c4085ecfc09c
Date: Thu, 28 Jul 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658976652
