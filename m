Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C2B1FAE
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658392612;
	h=To:Subject:From:Message-Id:Date;
	bh=4Egpcztt+9a2emXz2QV65JltP07LfTNZ+0LPSR9N/PE=;
	b=AIk2jn60fIkVQlshyfhHCr8dPx7Pfm10ZH8+ISuVuBohZR/wDPjbfFNX/SrBZs1D
	sMGifi9W01NBXPrzAhXeNv97WDyCkiEyntG/Q+K8zNlbCLXmG0n0yUhL9lHrKEAvToL
	4KN8EoZl8CLKAF6Bf4/YUS0gTi7M65YKf6dPzDlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658392612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Egpcztt+9a2emXz2QV65JltP07LfTNZ+0LPSR9N/PE=;
	b=MM4GObLud9E4GK17Voe6Vb6dbp/VhQPrS7b4ZuGvOif7XhjwgdD57iDgDpHmOrBF
	OP/+QJp7iGoxk7RE9bCHGV2Smi62FSo3G7hK1mxilOGtO20YKaCYQzPR7iArs3prNnW
	LvEdEDYUoOA/g7P80iGi3fgbsbJLEqG4f78LHhTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821fe70db3-b0719d7d-18ce-4e73-b51e-17fc6e7021f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2da0b6fffb793f802ed19639e4fedea54095bfe37f7d8c47a35fcfdd6d9b13c8
Date: Thu, 21 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658392612
