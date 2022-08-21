Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29567136A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661083252;
	h=To:Subject:From:Message-Id:Date;
	bh=CdDbbCeeOBpKC2aVv13k9edZsXsQzqD96QmipShIx2g=;
	b=RMgm5MD/8mCaIlTJmpcZK6ok2CAemKGsIHNtzXfwTBIPMkGzDWk/K85MuBst2C06
	bgbPXMxRxqLh6TLfn9N0fZXoUmcoiLbke0J2OeaCnRKTc0h7g4j7cocRPh3xvZ5KGuK
	I42YvJUW9c9UENV3o/+gyT3NnUIGKOWgAmfZF65E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661083252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CdDbbCeeOBpKC2aVv13k9edZsXsQzqD96QmipShIx2g=;
	b=MvIiQdBKdaAKXmHoUpWTgn1P/cfx3tLQCDHqPOuuxSTriRDEchkRvOnnxnkPzq7O
	Pbajl5k1Ed1heeQUns7hVcu4H5jonLxbo+BG+goKBTMDylRv5UWVMQ4PxvURJthicjk
	GHDGLzn+m8cUVEPRN5NHTgsR3nnr0fvRwuYMN4iw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c046f72b-afea49bf-33f0-487c-84ea-4d15b6c64ab1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fad1af526c9db6be1a0cba22f52a7cb67a5b89664baae26c55b10c1736ce9bc1
Date: Sun, 21 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661083252
