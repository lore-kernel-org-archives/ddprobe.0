Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6223F320E
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658157412;
	h=To:Subject:From:Message-Id:Date;
	bh=v0Vh6sh3P17Pzbpjg/LVABiw08VU/D8hBm+kSq6WgjI=;
	b=WIJWJ7TbgyxlyM4YyeS1zcLYqHyuQD9l2tIS+TxgYzps+62EeyUKsjlbJQ/J0N0F
	OmNJrq5WUAsgqfvzHCXduSjm/YIt7dE666C9ny7UTLXJe3HhPSk1zmzdd7Pz6FJBQHu
	cvzZrwOHhSCaAaLfLcmBIsms5ytfXmLHsOoqCGno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658157412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v0Vh6sh3P17Pzbpjg/LVABiw08VU/D8hBm+kSq6WgjI=;
	b=DVTw+10GNDM3ZJdrIHrCPPUHvKT2LMz/16k8x01Os5nvZ5r9PNlPfLzcDUnyD5Wv
	XTmxwfzbn7SkK5sJtOuL1KET0aVVt8oDqioJXq9ko7odTee1xkvvN11DXCAi0mogIks
	q4fO51IdFMpTYQ5w6tErdxTDsjAuyLmJ7OTsO4W0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211e23045-549818b8-2cb5-4e70-a76a-ed4a96770152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18304f35dbfbbd35734124de8807b3136601c2d779b8da175f6fbd555f69394f
Date: Mon, 18 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658157412
