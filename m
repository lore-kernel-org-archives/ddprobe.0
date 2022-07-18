Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E682A42
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658127412;
	h=To:Subject:From:Message-Id:Date;
	bh=ebBWGXVYASbfzT47sA6j3aN1eKKSoQTxjd6Y/Lnp3gM=;
	b=XDaUubbhEOXMaf/uHNXtlvwhcaUH7OWxN8QGj45EuJFdFMNtTk1kGxSpFou3AmAh
	GRIhOyHVqRjMddRs5gH+cyB1NYU7k0FoHgKycZsWj4n4sQsSVM8QjwVlqYYcL7Q6FjT
	TWRLNyoY/zMhkUUYA8sx38CIXpF097tEEO2AyPk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658127412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ebBWGXVYASbfzT47sA6j3aN1eKKSoQTxjd6Y/Lnp3gM=;
	b=JenSmIKSYLsQP7Nn/orBMlwh9zvRyQKa46t+lrPcYLZysWd9tcUWqJkS0UBz9ENQ
	4Fx/fBB/GwMpzI7L6jqlMkDPrcJUexJwoaP1X8VPUrkWbNST9vLreipQxMijDtzJ2zQ
	wYdmkXdGvnt1Lx03JfCpdx2QTfquvgU7ViIqjJZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210186c33-a84029a6-97b7-4b4f-a312-a0151023d725-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70fb4a9473f5bad034df2b845937529cbff1fa2d76c4f4bffdf70f4b8a487137
Date: Mon, 18 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658127412
