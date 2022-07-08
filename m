Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DBF7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657239412;
	h=To:Subject:From:Message-Id:Date;
	bh=UxcbCy/LngCkIvW6lVFsmysj6vSr/AIYKHgX88r0RiE=;
	b=gg1c29V86Z6Wiaji0qHGixk0WeCN6g2W/rabBrpZRq+EDaGOMpSb7RiBH67QKeHZ
	u+PoW2EoIgskTvcw+6kEvkPKV/v619V7c3WUObF7rRLxg4ykHeX8Qu+hqNRdQxClKoh
	ckioc1hG7XcgBGmggCjzny4nNYHbNxXZ6ICNPErA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657239412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UxcbCy/LngCkIvW6lVFsmysj6vSr/AIYKHgX88r0RiE=;
	b=MQth0qTEuuEssBKzN6NQLapjdCaHib/KVIxElcAWMTnLg1RroqPS4QXdTFDPeilP
	8XfviCgCcoTMknPG//tZsM7SwrHm5kuXrFmDxM2tYc1HN/jw4kwoH8lKXO5HzfIGjOC
	JkpNqkh8yU2/JU1RIDmgpTq732Td2ISRJESITG10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db2a9e4c-ac02a661-b1a5-46a5-adfc-2b61a0af2c47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7de0effe36eda1021f099e7d767683b35b23718558e4dc0eb53029646c9bed1
Date: Fri, 8 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657239412
