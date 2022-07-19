Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E050EA9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658192812;
	h=To:Subject:From:Message-Id:Date;
	bh=cIAjWFUlwIVOFRn9C6psOA1TxSyi6YDexr75XRy5WxU=;
	b=hnTPcp2ShivYSLmCfSZkSTw/deHT1asybJS2a0W3QUmVFKbQqdtkIOKqqX2pFWEz
	4r9dKxAFQpQNEvTbeeXvN+4LuMfQH/IhtMbaghr4rtLH+CeOpEJA2p0n9p5qHrBgBcK
	Tw1mJ9GvHJI+aqulQJr+yTQ9n7xSTyNkHEtT9dBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658192812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cIAjWFUlwIVOFRn9C6psOA1TxSyi6YDexr75XRy5WxU=;
	b=Q/0jlXwLpXM+TWr/WdU0UZvytl/0xKCcMe9EIiT0yyefBZkZ0XFCO0juAmKN05mY
	fVm2Y5dPoluPKsIqQ4ZgdjWScC+7XZc7H8UVZZzvHITJSoGrP6F/THnQFTm6eB1AMYZ
	/OPy1bxxTYpi6P7mBm6TdtWUUdPkmbXQ+fG2FnEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213fe5912-888d6da3-c29e-400e-84e9-3e9eff6eb668-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 949fbda802ce024ff1967fa8f43c481ce57f37211492213a622203c50be1fc1e
Date: Tue, 19 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658192812
