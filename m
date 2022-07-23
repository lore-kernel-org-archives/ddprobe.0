Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8847E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658537212;
	h=To:Subject:From:Message-Id:Date;
	bh=Ta4nqx7h6p1W0H6g69YZpQbxb7+N2M36s4P6eg1U+7A=;
	b=R8PYFt+piEuCOW2UIpTvYpCKMCqXv+f1XSgcV67i7PZ6zwmWfvzar6J2PgpAZIsx
	eDGBe2TNhmOCVBUVdTcZmlYpM/0Fhw69TcnAKPvVHFfV65fTDCXdsOeVTrWEkPcVwUX
	mulsdDXfYF10V6TwtfoM7dA5GToWo1uiuJKfM1h8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658537212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ta4nqx7h6p1W0H6g69YZpQbxb7+N2M36s4P6eg1U+7A=;
	b=V4PP4dTvoqZ8YWt9jq7bRtwAv/gTlIno5eBobifCxtYjb+NKxJyjQ40A9+tXWe6p
	RrPhErZx+XHsxDsCGcNdvpbvIN3bb1t37BbfcgStt3eweTiX5mlbKNDfmH6sQOA2E6M
	MV85eDq1bPEsGZ5KJBthmML1xIe5eM5QSArtLaIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822885798b-b21d531b-a537-40bd-b7b5-ac6ce24c5c11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab0f34fa3c67c1762a002888328dfe75b45311ab659f9e8145794d66c74ef3b9
Date: Sat, 23 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658537212
