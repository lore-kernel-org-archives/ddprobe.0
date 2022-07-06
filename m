Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C02746A2
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657110412;
	h=To:Subject:From:Message-Id:Date;
	bh=2RYNxcBFDaOIqaAQG2t238yq9cTCbPAbSpo1onPEFdw=;
	b=QXmHfdqcq5WH1oOFmsCWktoja1HsEnAiQLV4S2aGbdWpYkLoLTVEhWOzoA6bbRSM
	znoL6WOxe/M2DR6ytJGTGcA5v7Du/11QScdqe6EBiwfOZCe9BgGX9crKZuFEbnAlIln
	zzkIHlwSbvezsbcXJiNlOoIbFr6Ia1V5bZwJmonA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657110412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2RYNxcBFDaOIqaAQG2t238yq9cTCbPAbSpo1onPEFdw=;
	b=K/sAL0pPl2GtVkH+axtnTQK4A5zUtaGY7jgxXQokVUyhE+ahBKeO1jFL4slvjWIL
	OI9IZb+T5nsbS3Fot7VeSXRtwUIZSNuoTp2fFtVYsad6hDzGNgGF22peC1NWWUkacIk
	EAjNLfc797mLl/fqxNiFiSemKyXwpByCoPjS5sFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d37a3bee-74df121d-1452-4832-ac10-c50b49774890-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 007805259172ee0f1cf319a1b5b97f60afccb8c08d8fa227363a23d882185c69
Date: Wed, 6 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657110412
