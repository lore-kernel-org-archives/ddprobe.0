Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E08E3211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659553852;
	h=To:Subject:From:Message-Id:Date;
	bh=cp7DQaOpZvByZG3eWB1RJ7SC0va7okk1AEgOnCgVufg=;
	b=etMJaZC1RqwGStlL84UZK57GHQP2572oglFWgm87D30u3zEPSiv4l24NQcGfJCpn
	EvnxiYT5wcCqeVojHmHSdKEiiN2aysq7sLq9WCEo9Q7G0SwiEUH20/tm5WxIDvGiOLm
	oDgZVqVXG/Nb8vF4SAD2l8vSiI+CViLad1HkgJ1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659553852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cp7DQaOpZvByZG3eWB1RJ7SC0va7okk1AEgOnCgVufg=;
	b=fyz0CNVGkWCCmmGklzmmnT8ec6kSGTipl5miCzl/9RKI/tr188WNbpnxu6Zvvi74
	AsbWIuW807X4+SjE9Dpq9g7zo0An9rdINN+FoUjoyfGvLO+fSR6n2WZ21p6t/bVs9Yd
	QTUztoa2TiEcXK690nh/nICt8rDJpK7Tc1jNvv28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182651e2c91-f7d40f2f-e357-4801-8b6d-08da7b0c5c70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c53d97d1421f5932506519eb8fa7cabf63b980b77325adcd49c2a30d841ebbe
Date: Wed, 3 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659553852
