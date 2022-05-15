Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AAE806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 12:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652616959;
	h=To:Subject:From:Message-Id:Date;
	bh=qrQL+OhDtmzvEgzJHdMMgmnynX4/BR4RITBBWKLeqIE=;
	b=TxSn2fdv0zj5EVmIoWh9P3jK6mDEW83ecBiV16X7xhR4UQboNRqr1iRA2egyJA3J
	9Ze6xHBI1qlJzraXDpR4OI4dTmSCT4K7HHj7SHyHvEeiTtN2XJCkKFg03lUkt82Ty7e
	MILzIexbyzFAv3DlEdZnfMcMR32FxnMglQTfChmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652616959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qrQL+OhDtmzvEgzJHdMMgmnynX4/BR4RITBBWKLeqIE=;
	b=kP/ljpckREqZqz14hBZTYnW3jiNO7FuxxlqAg15yJ+45TgVCCT0PmrNy4mmdC7Xo
	w4K9VNNoRUThXGQ06ruGYZJ/oW4XwnKS5Yl9LFQW1q+gqf8+3ye1GbVdtbP73DCQHx0
	FTyr3oRzse+7tsSshmNdHzUIJcd+H0k6aVJhPUDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7a5955c-2a7fe655-aefc-468d-bccc-4ae92bb61e25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 312617b411ed9a994ce5abdc2fc6c4a6b45a252869ef7c83685659c43c4e8324
Date: Sun, 15 May 2022 12:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652616959
