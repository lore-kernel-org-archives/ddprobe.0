Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4DC36F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658026012;
	h=To:Subject:From:Message-Id:Date;
	bh=7jiYKKw7BPRf18+bJ/tfc9tFHAcI7zJJScmPSyCLJ5Q=;
	b=L00g9mB525NmYdPByn4sKNP9aLCk+o2AefalIbQAonrjPA4ksNGprjZStIUDpxwW
	XMFR8XWNA38xMcl58bvCQz8wsJksuqhV9c8d5tDpfFdy0/i1kpul/C47aPbK0Qe3M+U
	fUTIC9gOYE/g8JQFBd/4K+7mFF44SABsn34nPWoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658026012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7jiYKKw7BPRf18+bJ/tfc9tFHAcI7zJJScmPSyCLJ5Q=;
	b=g+KPXb4WxpZB0125gq35o3SEb/oPubaepBXuccxTr2IuBjgMZTpVFC6nyU3SIgAM
	wNho1aFscg/Fh9Li38VBrK0h+E+mZ0kIEE+tFVAxw0wMeBMyVAowPPvB0GwCPCyQacQ
	PvaS1Vz4BgSmqurtnP267+pIYTQNBLvsIGPEcSvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a0d2e6d-90bc04f2-56fe-49c0-8a2b-906c689fd6c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17c43df34ec969294892a842976a7f70425334b0a08253a0e150185a89c69ca9
Date: Sun, 17 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658026012
