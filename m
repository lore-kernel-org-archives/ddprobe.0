Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6329F111F
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648890178;
	h=To:Subject:From:Message-Id:Date;
	bh=2sQosCyRX41hXBiUi9DOl3BgyskLQ0umEMin78UA6s4=;
	b=lS2/UWGXYj/e1j529Lb/P/DTMPSLYO5a710X077UPj4loDwGKVx2IXCvvGHA5DFD
	8on0Qc7Pf26qpYzLcO/Ci4kg24JD7BMMo5ef1lF29agurpmLe37KYJzJodn8zBFP5j7
	6q8tCC9WysxD/jLnvytJJ+GcY63OT1Est/YY+DSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648890178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2sQosCyRX41hXBiUi9DOl3BgyskLQ0umEMin78UA6s4=;
	b=IJRAO3tQ887yfY6K1ixOIO/j0A0PaWhVhBe7jIfyqP9Tgp6h4BIEEAuduQ4hqzSf
	xh72a6n3JZRuq/ojXFJqqch/VOJrQ8YtQZCW2vzNzxBpOe4UROddU684TF6T8VdMn1P
	9z58+3cJeaYDjwXDsj/Ss0dQtkJfg0nCH/KIsBPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe9836b07-6044d3a1-b0f7-4253-aa02-bec32ef42c4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c052ce9fef8ad6332ff4ee6be4ab3d2f9da668cc7dda89d16f564f3627438de
Date: Sat, 2 Apr 2022 09:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648890178
