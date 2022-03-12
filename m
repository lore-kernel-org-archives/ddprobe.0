Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C706636A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647076584;
	h=To:Subject:From:Message-Id:Date;
	bh=qj6e4EgbGcKra40aLvK2j8Zz6qxQIV7Oi1DgN312BB8=;
	b=Lg+hcoQQ1Rg2IdG0hlasAaHWTa0WsaYXOSCiwwoOeJFNNY1R1Du6k3B1kKijQhIc
	K1Vux7Tyyjt+2gHPZXPZeX6Gbuz2AwY7r+h0/IY7bi8tkjIyEwgUjUGkVuUDv/WVD/y
	2mCazypIYQLqACkkkxzQJUnYGntOJU7c1fVBP+1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647076584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qj6e4EgbGcKra40aLvK2j8Zz6qxQIV7Oi1DgN312BB8=;
	b=dtTtkoxxGDpTkP/JL4S2ArDMSlno3a+quDfAepUF1kIjxcMJe/pWQvgKzZPGRAzt
	zFfNjguj5RMiCVuvChKZ/klLZk40uFCAF2Chht7rabSdjkVcs3Eq15f56KQemHioANF
	zFQa5RfsA8yNpUP3VM4z5wDG3XaixCcBoej5/GPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d6a2d1d-6fcecb6d-07ca-4f29-80a0-f0b592987475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ff45ed52fd48291b1bb72792a286f2b34c4ccce99adcb21ba8c0e4c27fc1749
Date: Sat, 12 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647076584
