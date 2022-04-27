Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCF82F5D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 00:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651017958;
	h=To:Subject:From:Message-Id:Date;
	bh=Pad6R5x1OKtHyKzA5P1OxhlsPXma3VXHUtP49k4MkcY=;
	b=Rwclvn7kWL1YN0XZDwBWZkKZn+JDrfx5Xbyw6aS6+pfwC+EKvqSQZNeryopQqDxi
	ABl+PYO6ZwqFo5q0e77U7KeQziMAupAGXXWzhfOH/O7JxOZANjEGbjdnr2sd5mYwzZ7
	ObYWCmBgXOQE3a0nDPc4WKP6RxrZNFkHB8l2/bTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651017958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pad6R5x1OKtHyKzA5P1OxhlsPXma3VXHUtP49k4MkcY=;
	b=ZuECoGsy+fin3dOhWypebqztJC1aTuQg66vRgoTOPqkaaOYyJd2e00EM2Bw0dEw2
	VGTv1GhTtCxZzUtI1c9mrkl2izRD6PFzURNVD80mrPFak0nDzSy/SgiXabdETWFEANT
	XuxoDhT9dSg6ouDM4EoE5fnqFvN9ADIC+Qkr3HTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806856c362-c1d3fb9b-bbe6-4a30-82cd-a8b7ebec89c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5413fb64bd841d7d5e81bae9af5b122d4bd33e965f363475c72f6947d2e45996
Date: Wed, 27 Apr 2022 00:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651017958
