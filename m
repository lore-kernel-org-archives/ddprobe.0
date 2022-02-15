Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D48158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644946285;
	h=To:Subject:From:Message-Id:Date;
	bh=HZ/IQ8M7yUBrLoa3WwVuCNSwT117WsKP6esuzxcQtoY=;
	b=VwL8watA+rf0on3c+Nx2AuYe/yLtudearXt7S/sPKqzAtgfntmrij5L0cdABCjSC
	4tKiCRuW3i44HYVa6qVzTFGBgnJOVTAZ2n6XH7Wqj8GKivCAiS0bIdQVnv9KeNkChGR
	r+mpNiSFNCDTMQTjhb69nQybVLHYeydsOg1pJksM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644946285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HZ/IQ8M7yUBrLoa3WwVuCNSwT117WsKP6esuzxcQtoY=;
	b=ZYjuBzOif03RO8an51xnvoHH5BcajV7jDcMnI3NbFP8QGvz1Ercc2FfUKjdn0FSO
	hfD3FelRuW1M+0ax3eKRRvxNO6aJ4f/Ko72GQYrnNmeVK+EgBoRoMXYs+ltUsKJ/3l8
	7oZtGz1pIzgaHSPEit1lM5pSB7qhHQm8wR8DvHTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe7060fc-7821ee28-ba2f-4d3a-8cfe-179e6e9f5f45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68503940f81f25c7e5446303b448270e4ff2534ad7ffc6a8819df71671568774
Date: Tue, 15 Feb 2022 17:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644946284
