Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4502904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 17:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652983079;
	h=To:Subject:From:Message-Id:Date;
	bh=NMahOlPVkQ+A+w2Xi3c74XqmJNKbInByPA/FEPDOMUg=;
	b=MrpmYioyuxHuixHtNtpKDulEfBHQ5yWBdz/PyPbQixegL0HATYTOtXd5FKrMOrlQ
	uFAEKvOxMbPbejp6HCBzqVJuKYAlirBdk1Dz8iro2nfFRQifpv9EISR0bJlXy2vAbh7
	qnlb0sTZOnFIjigj0bARZ2fLGqWzxXFEdKD7G4Xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652983079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NMahOlPVkQ+A+w2Xi3c74XqmJNKbInByPA/FEPDOMUg=;
	b=HEJKwXpMJ0V656+7N6bp/FOwkNbNIigba7qatIwADU3UAgA1A3DAPJCr7ftN85yA
	pSniJ0xFTjfeRjQ95a1V0Qi8Q3yh6XxeXhRUs49x6dsqgJ8DTqFobR6r9Ae3LJg0/Ym
	mdMl+/93A916pg+Um6o8XYKJA6iVnmHnpgvP5suE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd782169-1b5082f2-31cc-4240-8d3c-2e7a34e543a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d3e23452e94284013adc2b2a64f04f845e92c9b9d86302feb3686c97fbec61a
Date: Thu, 19 May 2022 17:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652983079
