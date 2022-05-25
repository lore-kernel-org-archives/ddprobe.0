Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D6800
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 02:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653447599;
	h=To:Subject:From:Message-Id:Date;
	bh=mTIMwSozEyydP1aRcbnIJrcfQZ1HCmy6S+PjNxMuy9U=;
	b=DT4hiEF4C3ofIBQld8MFzfT5z5HzybbPkCPawb0mqXT0q+pZ1zNNEyyHxGtkxow7
	CeEiWlSCGQCL9jebh7AO3vX9IPjPbO7N3FiNldzJdGE4+j7xk06KG8mkWdM+sEaFw7e
	9ieTFPd/fFvRoTLMDrbOHDNGOXge3MjMZ3CwYOpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653447599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mTIMwSozEyydP1aRcbnIJrcfQZ1HCmy6S+PjNxMuy9U=;
	b=NvnTUIDTGub+zUj14RshgEvCsuPmeC8hu20SH0OKhzcS2SB8amuD9VKyM6msEqUj
	tPXRxi9xtNFiH2lqQpj1mLApC8938nDzbeLI00aSZU7rPWGrlU7SB32GRgyJ2P76h4h
	lqN2Ziz18YySN3CxOpbmYJcPVGC9vdHRO2PFVCkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f92824e7-de894ead-1117-480c-94d1-007b9217d3d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c86735e8d1bf500e3589a1681b92cb2b454885b1e86195197055d8b8d7c0f0ff
Date: Wed, 25 May 2022 02:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653447599
