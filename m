Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F261363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 00:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651709458;
	h=To:Subject:From:Message-Id:Date;
	bh=p0/pMnANim+Lsk10wmQ6lX51mdAlJ45BWjLEf2XX6Og=;
	b=TxI4UKLOIMRUVEuQofW8JQIU2UOnTFK4xAV8nHNok1tEvrSPcpVUCzR8XwhmsC7o
	kBnQO4SJknHnzIlZ6MoYwbMYAMZC3cNhOrTI1oPeU+utN4AEa5NlalDdZ0CyKnBnvHB
	QKBtM0dVZ5mntPIimkrxZxtqJkgNNlISLdRT2fxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651709458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p0/pMnANim+Lsk10wmQ6lX51mdAlJ45BWjLEf2XX6Og=;
	b=BF8riIhOJ33B+X918S5TGnQk/zudsPm3wGEb0s3GG6vyCkGkpDsfkBpPBUJKAYzQ
	1tJ7N5WHBH/CnP+Civo+Owrr097BgKnbZJPvAPgX36MjTgzCmDIDYyLhaHrGbivhB0Q
	EWFcYwlVvxycaHPIC1sDnuX3vT4uvOLkto2VWs3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180918e379a-354e6d50-06b2-4a32-bf6d-9038a3353084-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b8eb9f569bac0fde6fb582b1eb2d3176e601c48dd882362895d159dac7b7f6d
Date: Thu, 5 May 2022 00:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651709458
