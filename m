Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361137B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658309212;
	h=To:Subject:From:Message-Id:Date;
	bh=etuyVe3c8m2TBmLaHbxFMfiSaUMw8Lq+cc4873XWYP4=;
	b=LUG8S5Kk1yQ6ns376WSP9CMaACeWpRNMDgPcPM1hEVocLX0WM6usCEkpAEqOiGbu
	owOY+EG5yr/UR49WpsQ8vytiuj/fmqkZv2/gcPMDpnr7rWCi5sc9c8/TXRJH8Km1Af7
	B4kWm6lLcgeA5citWK4VCsdVbiV2B2Do8EAKDtO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658309212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=etuyVe3c8m2TBmLaHbxFMfiSaUMw8Lq+cc4873XWYP4=;
	b=fa689PQt8JL/+FfdL0SLQGz0VTcbM+bQ/O7mf27uD3XfBjNjn9oL88h6vIT6xtQy
	9XkzbznB/zsTe2eoeYnG2viw25l07HmftM6PgrKNshtOqTNIzfFnvSn/KV45J3IuCTL
	6Ha/iKmLgpXBNvABlcSrNNSqLsUrQiFyzGWHhRUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821aee78f0-65911f55-fce7-44b1-a01c-f438954aa7d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cb387d30f4b18c139c6ea7e56f646524322657a72932b88c3f81ea23e041ca3
Date: Wed, 20 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658309212
