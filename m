Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5B41103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652767619;
	h=To:Subject:From:Message-Id:Date;
	bh=KzPMoETRdFerHfrlBoXw3ocS2clh3HABzqqECdmlEtw=;
	b=PqBzv3uEVDgfOq8nqF9T/0lHLvskR1OU8XqtDMhx3qgUvepDlWW1M1ySFzA0Punj
	g1P4vg3+8IYrgmzla01tlELZiX7oXSGKCMWpN4csvuegoGkjoYbKsPiXZDo3SAxnTrN
	OMQPJQGzUF78hx9Boa5ZAszurxzELVatGw4Y1Ugk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652767619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KzPMoETRdFerHfrlBoXw3ocS2clh3HABzqqECdmlEtw=;
	b=WT09c3R1QBlpzgiBR8JngSg3LY7yTSYL7iZgIwRtoOx0FYoNppOxSzHVXb7hKWxn
	VM7OPIcvmRS42UhVws5vBSQYfyFZTZwjE0Wcpk+lUXObCk4VUXlfArD61bJwYLS28Up
	H/LR9kV5LS54RbdmNpSEwouvkWJNLV+P+ZY5lUR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0a078a5-89bb5270-dcea-475d-8f0f-44f61b019842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09d226ae783c7fba60d4d2bfc57082790871ec97450bc634ac100ca6095dca46
Date: Tue, 17 May 2022 06:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652767619
