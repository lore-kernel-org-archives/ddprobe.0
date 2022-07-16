Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0975D362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657931212;
	h=To:Subject:From:Message-Id:Date;
	bh=MtEQSRSUHspERQDU4hKO7NsKtbpsyOHzHGPPF5arnMc=;
	b=Dih0EfTYrQkyul1/QCEQUJDTIXyZlvkoAYHGRVLSg/WgzmkXxvTzE4bZ8w143D7H
	YPD8dUMxtFxVG+bSQPrfjkEfxz/6HP2UfIhkoSoKOn/Fns2Sx1mpYvpLWo5gT/U+h9z
	XJ9MIukXuFULKbdR66mcYaNcWT1ppcbyjIFogeow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657931212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MtEQSRSUHspERQDU4hKO7NsKtbpsyOHzHGPPF5arnMc=;
	b=fNEjyeXAJgBmK3kzHX5fsEcIRfzOE55+iGMdBoZbd4ODErjxQRphcIxR7gt8jbgC
	KBNzVXRbVGThVEViHinxfezkDt3r7odnnAil0xmqzlFF5np9e1aXczs4hun0tshVZ5d
	Wnv99qTGhpv7V0HvCQuheiz1j7uTNjJ3YgrNY44w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820466a5ef-78ed5556-66f0-4d07-999c-655a7918f270-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9737b626e49bee1c7bc3e7e6f2f69a9a0b3481d06b26172257ab553546f63020
Date: Sat, 16 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657931212
