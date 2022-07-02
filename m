Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063061C30
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656743212;
	h=To:Subject:From:Message-Id:Date;
	bh=teEdS050C3ZGV1kr7PqlmT3Um1o/y4rZbiyieXgAzaA=;
	b=U1KzyDaMI3GkyfiAiNNvgDH6Udesbf7DsaY3PhbqQ0ZM+FjCWcRYpfIObM3McWOt
	EcfYeTi+Of0NUl8Lk91RPeiye4XkcuFio4WgiHWflyZit2FXRL/yQgoHjzUBCn9yxyv
	wSGooeHM7XtMCGp40WY3JSYPiJGMQqW+RUpU4qwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656743212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=teEdS050C3ZGV1kr7PqlmT3Um1o/y4rZbiyieXgAzaA=;
	b=h7enoHYXEckEw+7Mi+Nsw9buf1whFSqQcpjOcp/8wUzXFo3SNrL0qRPmgUbSCTBU
	JuF9r6cq3FA7PbKU2RcTl/hZfGDNHUoxD39zxBVZ5427lmCfCwSvaLVgvuWDpj8/RLI
	BRwVuQfFxlqXFDgYXywLI4fHTMxSI0n/WsRdd6ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd9734ee-0932aa84-4c4f-4981-9827-39d6a93d2cfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c2e1a3bb0d19f0b0570390ea9122cdc8dce530605c7ab8e37e1de45c961b4ea
Date: Sat, 2 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656743212
