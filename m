Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E0C193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660873853;
	h=To:Subject:From:Message-Id:Date;
	bh=0y2pxpv7s0zdwl/6OB1cVjddU78CAO8jh1PfdH2qR08=;
	b=Bj/YkkNkhHpG2LHJIDUaELlKWT1/oRiol1ZkdY7a72ekblDukseN+XAg0F/mqJMI
	pYhSA24eCJ3gRT7uPvbgqyl8U3aO6jekjgkexabOQayEVTQLjkRP5A7RRNw3RRZzlcn
	NdCcIpBPwPZymgfFOmYkaGTExhovMYxOREzMD4H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660873853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0y2pxpv7s0zdwl/6OB1cVjddU78CAO8jh1PfdH2qR08=;
	b=gJ1l+bMTcjOZKw78ueTd7Q3Bv3sldzP+DoAb8hVcgylKzIO9nDoUEKJYn9eyV6ni
	Yole+etCY+xF4J01Pu6vCLY0vUR56yhNpLBwQNnx7eK9dH3G8+ce4OJ7g3w4CUsZmkM
	PVagdyZ83hwCaMD6eyfngHNtXzKda3WUul4e9wpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3cbc6e4-bc739d0d-b137-430d-b081-6e135b9ca80e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dddbfef3378985f4c793c075c861ac6ccf31d3c4467258ff29fd1be53ef31d5f
Date: Fri, 19 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660873852
