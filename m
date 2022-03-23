Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C1A7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648001784;
	h=To:Subject:From:Message-Id:Date;
	bh=WZo19+a5C6aIVuXnoPsx2yYAH5soyODCAoKvljMw3bo=;
	b=mbsvjvKKcKEEUQioGSM41iSgjq5JWqUdihzYNgARDh9SVnmEYN9w+KXTSgSVbf8Q
	33MtDJdGGppbZVHZ1AymtdvgLsu+lOPhT1+ZKorWqlnMO8rtxMWV+CZ9a5dOeYJ+5fw
	4Vco3sclFjfaDM3hD/YSHTZocH8NyMHb4MWA0XIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648001784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZo19+a5C6aIVuXnoPsx2yYAH5soyODCAoKvljMw3bo=;
	b=Um8s0yA8rbtpb2Ijkv2iBNpWKMOKag821exl4srtP9MQr/OxLZ8CBUpZCpQ2f/sE
	Lh2JwqrHyADXAsmWqRCxHflDVpH8SlvGdnfrUz5s0eoDls83Zz9HZMNIgIuN1KLEWAL
	xqkrxmVH+1LAsYL1Y4oagBHOCLTe0PFaWpC0TYSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb48f9b9a-02a99dbf-ce69-43a2-a65a-3c761c69ddc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7c637a90bfac1eedb4940452e1a0e3bb01478864a7d4fc2472eaab6a9c1d678
Date: Wed, 23 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648001784
