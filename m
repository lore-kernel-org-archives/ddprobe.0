Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FDC7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658536612;
	h=To:Subject:From:Message-Id:Date;
	bh=ornHvdB9lsZRoWEtWs90Y+U+i0pOlDAY8KhcAdTPRKw=;
	b=fxw2Rjvh9HWYog2Km8iTM/4vR5QkyaGANvH0txhGi+4Buw60SDcLUAlYK6zdtott
	S1YNpGMHIw7FfdDUN04Ofk6pmHoF3eH4OKNwSlF/7n8MC3K4IVQzKMH4hAHQWswXdBE
	GX7SiQmnEo7rlCylBpXgtlg1rQqzWTxxBDO4UDD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658536612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ornHvdB9lsZRoWEtWs90Y+U+i0pOlDAY8KhcAdTPRKw=;
	b=JTa8bFOQJ0Dl+PHGuXczI2I+LWMRsieWyy8pYblLabW/4McN0KH+UlAEmSSsHFKT
	E1Ltg6im0fTdUDEpfIgU32WTXBJHVO5FuEGJWmxPyvj3ctaEMG9UySfrORvjoIrpD4a
	4CEyLJn4+4UbNnJSb3S/qEDO9qrOE2kzXmUkZSzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182287c51f8-557dc3e5-897f-48c7-bc9a-f3343b443757-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5422f8ee59fc5742f37a5b4b683ba084aabfdfe47c6c12dbfa9f0f4a35bc862b
Date: Sat, 23 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658536612
