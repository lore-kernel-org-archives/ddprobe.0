Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194EF7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656607012;
	h=To:Subject:From:Message-Id:Date;
	bh=U45g8tvrNZVDyvuzlSZBn3GZAJU+p/ytav3yRiDdWrA=;
	b=BYlLlmcukvCor6VKoMSwGjlhcRFMDvNdCS4ImEKEtgE8TfeLH1zJYV72JBGqrNq2
	QYL7o/2McKbdnLosGYyTxcvq0bAUVCFaWuvJJQpnQoXYNNwBNJj/ZhuadIHvAuh5Qbx
	Fr6Tao/GXJ62URxCRxmxYUmjlrbQz1F9/tvbIbaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656607012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U45g8tvrNZVDyvuzlSZBn3GZAJU+p/ytav3yRiDdWrA=;
	b=OvGFIHv2s54U1zO+X6NED4iqhB7D6wK/hrykMBhtoMOzQjGiXgxM19rXChBpQaUE
	U8S5T1DhIP3KaNetgFzkGZEkRcGQKOkY/njtwasJdSSFZYeQ8HDr6RkSAnth+DF2gER
	OMjmGXioCN7NusbZX/z5eu/g6dwh1cMX9tbJ2eqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b578f5d4-b0f986c4-9a44-47a6-a576-f958ebcd5b79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce74e1c269819a9c1242673e92de7e9dfbe98e8bc07aed03131ee4bed419c409
Date: Thu, 30 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656607012
