Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110F63203
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 19:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653247859;
	h=To:Subject:From:Message-Id:Date;
	bh=27wEdzIfhJyjqAtkR0cLE4o761Oe/2/a2KBF5j1+lKo=;
	b=DH85cfhlZ0a0YFJvo5KAaw5imiG3APs3NlaaLUy58wpT5rVuaivaIrXeF9z6vAx2
	A9lMHGI4T5I8rpL6S/sGFdjK3ynGuVS1jf2+TyEz/pY+62NgTBDzgAe+nq3cNaCflnt
	uFC+lOVuFASlEXYCPTte0r/g4pnuo37Gj4CdxKMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653247859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=27wEdzIfhJyjqAtkR0cLE4o761Oe/2/a2KBF5j1+lKo=;
	b=bceZz1NNQ0XCVAqzv2F+8jVkt4BiTGGRMBESDSFT7zUqzcK5dQwJ4jaylNKmxIz/
	ZM6jC+ffAKM2Z/8aOSLMj0FRkaAR2iicXK6RBA1BSaPUwU0la9JXueNjGA8XBbAKG5d
	CAyvUTI/vVs2DmrgPFpqlM9hqPT8oK49pEobYcgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed405a94-aa9f3fc4-ca53-46d9-860d-56a3740c5182-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 926c4e303561c736046a2df9707730e1c55cd94ec2a0270981d701528057bbcb
Date: Sun, 22 May 2022 19:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653247859
