Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F1A7A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657544813;
	h=To:Subject:From:Message-Id:Date;
	bh=XZLNUFCM4gGGRXe02eDXmD/OiFg6/0WiCZCOvTbQeSc=;
	b=ey9pfUASr1PLYAc7CZKC2/aS3m0ovz3/9NDuwia7q1ERFvGhRQz24iqKVifjQ6Ru
	HSBusza+vwuKeZvVZkrx9dx+0Es17qee566tNlUu7cLpBI8kg/EmfLtoY4iZdlfDVdW
	LiO9uYgMhf7cJO3+UZDPRFL2azb0tc+hbYz2bXD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657544813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZLNUFCM4gGGRXe02eDXmD/OiFg6/0WiCZCOvTbQeSc=;
	b=OUy1njJT70nd395rHvijJZGhGM0ju8nvKsq0Qhcv7+tj1TJThKXtbNTQH4OVC+Is
	wYxAPrWOC3PrljMAKyh8IKGt4ZjRLNx+4yhWEYSg5guY0Crcxk1pehdEb94nHT28KUr
	NcoB4bPgufJjcAv/Q2r9CbmQetkUBHdsIZfYKyNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed5ea71e-c6efe992-7dcb-425b-820b-c01f35104f9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8072eba3f43fd3646a6810336c91c90d05b350c22084b1d83f6ac1d242800621
Date: Mon, 11 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657544812
