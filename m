Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A841104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657442212;
	h=To:Subject:From:Message-Id:Date;
	bh=4qPESZ6+OVFka2hsRJK5zxszr4b3o1epilY0RkzdhHY=;
	b=Envf6xQDofCDN++f5GoqXg+YfCg+akys3iNLM4adsLuIPeF/xmN9fyVKGS1UnUQC
	GNsuGQo0ALUDlSO1LMbPK9yuAMxlgY8Y4/TS3rkr/CLpqIDTrEC1n5I5qcjQzk2R5P1
	G3dk4bYqiJ5SFd+QKWxAGx4vRiOW6gc9DFASQBS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657442212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4qPESZ6+OVFka2hsRJK5zxszr4b3o1epilY0RkzdhHY=;
	b=LelwjZWSoCGcaBF6T+Sj5Q1HSn6TxcF1dp30HN40kN5yti8jeVAHQGx56gTZQV43
	SIEGTFkx7u4onWylKJZuxx+rn+J0Jqo51qTQBwcRko+Z+vJ2l0xeP0w+uIz/Y8V86f5
	MOjczjUmf7Zh9kFtbZsSoF8mXtrzzLjPoCW8otw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e74119dd-491fbbba-a750-4766-9e54-b5ecb0962a3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 987cf4f91400ad5e5c0ffb9cf84061340e6657bea00a09649e52f886af533bb8
Date: Sun, 10 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657442212
