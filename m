Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC37E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660375252;
	h=To:Subject:From:Message-Id:Date;
	bh=Gx03lb6COWSRoUr449uhnqIIBpafox2ZQp+JxhjoZLE=;
	b=j9tj+SKo4k0zNrxaV+OwdObfQCM43N96Q/2wKCHr8WGirKpd0QhvJRpTnVXC/mXE
	iqBPdyIrFIZwkoLvJK7ukTuuG4noCESg/Ax2Kh5Xjiu+sYPFu81LMerAj3CXSBHSIpL
	XWBDPakEThdUf64wCY9jBuR/So5KZ2+1E8lxlUBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660375252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gx03lb6COWSRoUr449uhnqIIBpafox2ZQp+JxhjoZLE=;
	b=JC2B9qEcJ9Rc3XF58yAVnAOgQLO/zKN5LONqyoaQkoODQ6nqTzvOfjwM2CCyIGAn
	QJHH2AzbbtB/lIIk1NzMpTUWAAloyPH3FK/pJzj0GBzlte8Rrk48IjB7yL1uONYSpXM
	I9gNMaxBVXwcjn6qilNQpkMvQ2k6oiGoYuv5Enwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829613be3e-d5a489bf-4621-40ae-9289-49328a20650a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e072f82e317f4febb8a53574d8618b39ef036d3a25b65a6df632aa1fdc7c7a0
Date: Sat, 13 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660375252
