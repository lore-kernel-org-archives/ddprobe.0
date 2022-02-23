Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10F27A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645575985;
	h=To:Subject:From:Message-Id:Date;
	bh=PvPHgQ/xXnya35rrTXW8s1UzxiwAQg24DMbdiqOUclk=;
	b=Dz+5ACcZGn8epLhrB1g7ikieGjGYBq9sHTwDc6sdWpZsdV/WJEafLftODH+chNgS
	m5g2vP6rtXYQEWHrsTp8sA24m66sSvM8D3dkzKHwpN/Wd+60tseJ4fHIyh04K55078V
	qsQhcjIQBwxQw9ag5osoxeGT8LayXPV5QgsWZ+SI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645575985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PvPHgQ/xXnya35rrTXW8s1UzxiwAQg24DMbdiqOUclk=;
	b=WJu2vhEhpml1box4QaykCWUMR8GXrfbhUfksozRTzi6sY6B88HUiecBVPX17jjIM
	xMb6OB/Whqy53XSdwDa2TF3amLA/piQvU9Wme5Kx5pkId6AlqhNqME2R4nzv2JCynob
	uv1yv9ioB/IDTyfVn1Z4Vc1WSDPblO/L5k9jfLNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23f8d68b-63ab7969-f2cf-49e1-9c34-36d6a5e7b754-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e94c3fba671195a5170238403c43f69f0c8ce7897f9f2bbb8386b1f175e3fbd
Date: Wed, 23 Feb 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645575984
