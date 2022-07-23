Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4177E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658620612;
	h=To:Subject:From:Message-Id:Date;
	bh=QSruBVeC8Q9Un8SUYpVwOUT/S3h1NGmYAiQqSY2Hpcg=;
	b=i0y7+vElsvpfkmH6F7Bn2N6ZanBBPFnkZmN31NdJ/p8cVzYTfgkB3G/QbYCcBRy8
	tgFM/C/uMMQajMDyrHkfCgWPXYJR9hmmMyZocjhUZPH7iOMX+ipl+kLHzbo6jjs2M1H
	wyGhYOcy+qgRxsUa+fgKO3K7wyNYeiHbaljrNbN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658620612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QSruBVeC8Q9Un8SUYpVwOUT/S3h1NGmYAiQqSY2Hpcg=;
	b=JQCJwMd6PaWW196o8HQyQ+o3gFklH6puKokPo8OqBGfthAZ9aFxrsHy+3mhhaEjc
	LXq/0AFGHPERlWaxKwM4pWw59Ecp+naYVeXUiBEioOehHuk0CWnHyKQ302iZizy8Fq3
	OO/vE8PpV1U39cZouN3rzreRrxat/7merg3OwjG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d7e0ec7-092594de-59c9-433d-847e-e4b6b37265bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d889eba0fe59dc6f3b7df6f6e0b1c07c0b934923426e772bfd9603b0d492934e
Date: Sat, 23 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658620612
