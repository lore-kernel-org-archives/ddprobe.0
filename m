Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740D620EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660989653;
	h=To:Subject:From:Message-Id:Date;
	bh=ZyzyaqqdhNggPit1ohEQECBVseX/edqboirUsL/c26k=;
	b=VNOtdKGV+msVYwN2InKvXZ/b8u+TW0b/AKXArCbj4lNPH6qFwdsMqNW4bxkkd5r9
	p/Kdoh9lFL6zTxFFNsPw+ySSgeaor6d8VQoXXdAy4oqDDQ62ShIOXsX9AIpe/figl+i
	EmxHPTxXvipw/v5liM5dNK/5BiLJatJTuszo23+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660989653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZyzyaqqdhNggPit1ohEQECBVseX/edqboirUsL/c26k=;
	b=XbQxRuAbqV1QPuwdnK/lAoRip8mEu1a6eNzs1OK24f/0sG+EkmAyqKOMbjmk+jnU
	baOBMjjdZhdkEYUmncdyev0/KJGNpCZvdBrrT4DLyqCfl6GFDkRCsKSeU94DvSb8fV7
	Gu5VF+zmZu3ZO++kBpVLSvNOjYtw8SRVGLN5/J/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bab2be99-5d2be3d8-2c6e-49c3-9732-234d9399f08b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 650f8dde20d9915416cd7e9ffa1a9a0d0d4282c9bb9a0e5f37a6d938219812b2
Date: Sat, 20 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660989652
