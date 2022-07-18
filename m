Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248AF259B
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658183812;
	h=To:Subject:From:Message-Id:Date;
	bh=2v624M2FMmQVCgiKb6QOYp5YMN2sb+518c23sWMkDTs=;
	b=ddQKTphjWk32eEuyyoX5t7YWZgjN3Sp24dXkKQSaPRL0yLQoWXTFdJTCUdDU5W9v
	/eLWjKGTsv1O2viFY9QnKxzZ5088b/Ho9FMGTy2d0pKLUB8u5j7eD3y78w7a5P/sg0n
	KgNX4ZL0jhY/H32Il+jTdLu4QlwA2hJv/LN5vdJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658183812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2v624M2FMmQVCgiKb6QOYp5YMN2sb+518c23sWMkDTs=;
	b=HNrRivVXNagkeCNn2WyVMyJ3cWCwWK8kX04GRxKJUqUnOQEydDkGC/iReaKMGNBd
	Zfpx1PkWcesyzlpNSC1WEnjSfjIH1v+9fUaQ60HnGFYBy9VRPgK7Ch9t6NisOzO4Xa8
	644X3333gZZafIYNY8wN3xD3iOBYaZkydKBafJ9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213750505-30126dac-fff2-4df7-88a1-adaa59dd85ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 675d2d69542bc8cab568b3cbb8982f7acbe6f07bd58a96ba8ee6ea140ebd5e27
Date: Mon, 18 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658183812
