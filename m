Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F098D7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 08:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651048918;
	h=To:Subject:From:Message-Id:Date;
	bh=unrkY34UI6xXv3K7cdtdgSXGXiQLLRyU5pES8wxznEM=;
	b=H4cTD3AZbnj/b2m0Icz5IT6A6N2E8NNAJaRDh1GvUvyv4tsZYyYplINU4IHMXB2i
	SK6Jw46Eu8heOdjIDlKVEl3TIqelgQ8dqTfZht8YmeLE2Zeq/kybWlAJtlgXOiDFS4H
	rQeSPE9x4ghmpIocZRb/Ifr1560psTP4b5cD8B58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651048918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=unrkY34UI6xXv3K7cdtdgSXGXiQLLRyU5pES8wxznEM=;
	b=CRm4B4txvv1ybzYnDDmdMM5RGaAGw4Pm6ZvweLFs3Bvj6wqs6pqHRaES+hoKm965
	DzDIMW9xPs+QwJ55eCAfCqArDtIYBEjPNCHw0D2DYAaW2LkyyDTzguF5M8DcOZRdO48
	reKJ0GPHEVZz/2Y63+tZSGLL0wMmyi5iSl++vPK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a2f2d00-8da96474-594e-4a4a-af7d-5abe2954bc7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93799a617a6931530623bbb72ca5fcf28cc8550edcd763556d1502cfa75cc0a9
Date: Wed, 27 Apr 2022 08:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651048918
