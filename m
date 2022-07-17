Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3173636F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658028412;
	h=To:Subject:From:Message-Id:Date;
	bh=CTGsz4aRLH8i/wfBX+5QgoF/Ek0e5hfSM9kuEC7qqNc=;
	b=ZaAGfIj6bj04CLRK+7WpICV83y8O9hw8fGhN/JhouFuwufoDNMYB6wHpQZI+rKZE
	7wSBIyiarJMz0u6EtoFKQyRdZ2z2IcboKLHHkJV1uqqlKT/wxk6ee6uYmxlzl8afL2f
	bW+hhrqHTCrH15fyQv+KsFjRA0RqQp7hKT1TnoVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658028412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CTGsz4aRLH8i/wfBX+5QgoF/Ek0e5hfSM9kuEC7qqNc=;
	b=D8sxq3PX8h1J5PF/kjpmCbV7YW1nAJ8wiscR6haAS1wP2RijlRhYxwFMT2F30VNX
	hg9AGPGTmfMmRqfkxIF2KL/DMYBE3zRqzD/eiUi4Vl5BrMXb5yQYXSZm4oNiRU6yimG
	8gAP2T7kHBxnL9+P13+RZSf3y6yql2ByQRcjVwoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a31cd96-6361dcba-9e15-41f4-bd6a-c32f0a26950e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc3a7cf89afe431ac99bab8df85db53f6c11da511aa1c191b45489a577646dc7
Date: Sun, 17 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658028412
