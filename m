Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB6D63D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659529252;
	h=To:Subject:From:Message-Id:Date;
	bh=ROx9EsD0QKvVlMJfMbKrK1ra6g2FLySRhjohdhR23gw=;
	b=IQ/IbAe6MXaZZl7wM6FVC999bvxe5e6b3GzPuyiufXRGjhaU2Od019QTnElxfk2o
	SiX1sWMvB1GHqL2ejUJPcANY3gzlwPuwebIoxe0sbS+5OBKzPSDCAPW3sQaQRmDv0Dc
	fTmXOcqS9Ly4hKeJca+UGI96vltfbc9Hel6Jtqh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659529252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ROx9EsD0QKvVlMJfMbKrK1ra6g2FLySRhjohdhR23gw=;
	b=VvvVDCdwl1PDEJTaDhPb6XFFuHWU5iq+r+avlvZchcqQLezg7dyevxWWQEbfys2+
	VYmBfZIi/HdcTauy9WGgOjp9JQGTkEZfgOlmCzZymBoylZzbW+zucQxmEWN2/bUyCN+
	OOa4EDd+QkPM38YYJFTCY1/EtLlgp5BnMw246Tvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263a6ceef-f0f07856-ebb2-4f71-bd07-882634a759dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 106dbb934cc509fa121add34c57e6fdf50fc79409cb5b3ce887efb3a1c8bd024
Date: Wed, 3 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659529252
