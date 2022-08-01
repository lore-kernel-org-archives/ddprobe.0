Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FAF7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659384052;
	h=To:Subject:From:Message-Id:Date;
	bh=kRCINQpcgjrYNvjk/VWbHV4573n6C3vsHpXykdSiNfI=;
	b=X9siyGlRGZxLPx/Eq7Lzc8MgomzCXjAY1i4NeV4V9IayJ6z7VGOn6T521SrXTxZZ
	NKl/RTt2t21VnuIfNtjehgL8oiDSj/99mwTYSs/IJz7gB3hMQVwOWvExVzvR4TtNxsB
	SkjSd+Y3OszaSwA+nVm8ozUVaLmSVcCpaXgbwhQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659384052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kRCINQpcgjrYNvjk/VWbHV4573n6C3vsHpXykdSiNfI=;
	b=kWQ3Tajq9uOI/5L+871CM7d1Qmh4bZhCRUjs4bHU2cgMmjEERAeqOGg8Ltf4mcW3
	OqFzt/oNT+5/KaDFuPG3hpgQ3Ds/OTwIwCEMfv4h6C3h3Ux3pa/Iz2GzwAssnFybmVB
	jBswhOzmAswzZ9I/fkfp0M0zYjmO5n43J0zeC7NM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825aff3b5b-37c0779f-7ff7-438e-bf8d-09f309287db0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b5c19c18e5f26d18bf423d4d8a4b807bdaa2c1286b51d60d9f2a2f27bce367
Date: Mon, 1 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659384052
