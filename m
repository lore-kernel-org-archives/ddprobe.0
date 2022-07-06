Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE227C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657102012;
	h=To:Subject:From:Message-Id:Date;
	bh=kRl48a1PA2964cQuT4zRfOplvOS75C8an0b+XgQB90A=;
	b=RD1s62iYN51YL3faArt6CH2DeWsgogVCjPTw5+jLKFfK+LPBV79zeXa+Ardo53Wt
	hCoTMuTOwCJHi8KzjzJsxnGaICcMSiXgMqRBoxHwgRSTP7LT1ywH/NLVbcV2oiTVGqR
	n9u+RFuCC4OwTIoaKYL+oPBCELPpyDgKeuglCiJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657102012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kRl48a1PA2964cQuT4zRfOplvOS75C8an0b+XgQB90A=;
	b=dW2zIcbUrVb2us2jPuvNjzZJ3yMqleRh80DQdzL2tzV/4xpXIKp0KIGkvxbLiB66
	dlFsOKMwEzDNfwJsx5431BgbQ33YJh/RWtT34RnBW32i3i45RoJ5FN91PUeRZSmiGbr
	knWCm54dt8TXgQyoZm6vGmTt4qa/nM+0Sh3RjihM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2fa0f9b-fec2d62d-f500-40ba-9f7d-184113972112-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b13ffe7b0033f4ad80de6ddfc558018847dab75d780cdff679b87ac844d70485
Date: Wed, 6 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657102012
