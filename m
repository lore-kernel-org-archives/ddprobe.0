Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6217A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646374285;
	h=To:Subject:From:Message-Id:Date;
	bh=vibCxNcDEJZ3S957f1SAbKsPKlsUv3FOVvcV0SoHNUY=;
	b=TlgTx7ngbD35xwghM8BFGdFvZN7lxxyOsOZZWuis7skzlDRTaIw0MTmGL82fCw17
	OD/atvULdZzxv5Yxt7VdPDRkpheuXtGWNqplNkTNSrWUQ4Yge/Pie1KfEcek9U1p5b4
	FHTkdOJCDSUdjvUY4aYP3wDskO0hwPfanG9sDAik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646374285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vibCxNcDEJZ3S957f1SAbKsPKlsUv3FOVvcV0SoHNUY=;
	b=ar1r9TxIbOHXM2/Gmxc8D0WG9MlOITglcnzkttIT/bbbETuoNZtutFrMl1XGK79P
	3/Y4ZLwu/HlD7dbLRvngX/BtnxC93YYAgiYL4xz8tPeJtt339IXOD6ZAJhrMABBpH35
	ajlZbMvUEvxgUZaRlURnJFm5y7ptc2wd0Ns2ti2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f538dede6-5fe63fb4-f7a0-4e92-ab15-28ee86e66086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f056fd481f57dc0aa359d536c8b34aa91c2126c03aae6d842b5f4067deafd90
Date: Fri, 4 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646374284
