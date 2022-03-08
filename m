Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C1F1FD3
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646698585;
	h=To:Subject:From:Message-Id:Date;
	bh=BoLsAPLVmsnxZBglIzLBXIyeJb8bEojfJ5IT6O5CQE8=;
	b=UGQAizV9dYH2lKPCzliJcp+9KP6ThDjD1rQVQHpLEFTKnETmmaEHIGfa2Npa6wor
	kCAOtnjq2mY7YKo4LgYhWQ5KSGSfeRLxejsMj7SYdo6EYwkgQP+2IqHt5N7PNj6qHMe
	xrNIjskVSPar/DQzjEDuLatNqB7W7+huGkpnKYUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646698585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BoLsAPLVmsnxZBglIzLBXIyeJb8bEojfJ5IT6O5CQE8=;
	b=KA24deBnqoEZEcdMn1yEbV7iUmOUqRvnvHbphmHIBTMQHkjHXchvHphbHWhDun01
	CMth7A3w2CAR49w/vwCW2eAp41rkPhogtnSL19D4vmSx2Fr6ZrQkvElJ90BbVPBV3cF
	Eo1/9yrIahxgdbjJ8F/GOkLREXxc7RRbtVEEZjn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66e25ac0-07a289ae-b026-4094-a339-ab78faef9183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a65cd163b3a8af54173df65fddd72545fe05345dccefe2823fd0645bf807685
Date: Tue, 8 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646698584
