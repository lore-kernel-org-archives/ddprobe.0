Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E33D81D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 02:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654221719;
	h=To:Subject:From:Message-Id:Date;
	bh=v6OiKdpv46jsvrSpWjERvP1laUL1TM9CerJLtV+vtFw=;
	b=TQrWyg8koyXSKwH1Udb6nJoA5q+bt4H/DVtJ6JWCorQdwe6w/GQ9f1WhNyCaR5qX
	z0GZNuWyZbUOMOdRiK/1ZQjnReBDBpNG/Do96YPfqEkQQ4Lwtg/MI2bwlJvtdq9vFxm
	7Mi3zFz2uKupn0BlHeQr3vphLbqSsxtUV8san2sM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654221719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v6OiKdpv46jsvrSpWjERvP1laUL1TM9CerJLtV+vtFw=;
	b=fBQWh2nGanvyxs7SV5sxTOP+7lsmVo3XaswzQgMauMb7MEr/RXV25x9qy4ZAcc/T
	2geRtYYSCi5a7trnFccV3TSI2po/tWMA2Qr+COhHKO9tQT3+OysFcKNeT+QPnPKvhQQ
	0fMXiLWefsXBIvPu0QQdhGOh3wF+ckvzNXsyRx8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181274c46de-10bf8147-0cad-4bfc-b775-0def79dc3e49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63637d3af0d7deca551c7213c40e84ff055c9e09be6c991e13633bc19d0bb5e4
Date: Fri, 3 Jun 2022 02:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654221719
