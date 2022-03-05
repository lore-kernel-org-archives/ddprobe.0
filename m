Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E477A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646468784;
	h=To:Subject:From:Message-Id:Date;
	bh=3zm1LTv0mQPeHqB5GDyUKd3rEjI6MPrjUd8tSCX9vbs=;
	b=NhMqxhg9eHMRDMvHOYTe5y0t3MmKgDDzn10AmXyOvasU4hk6h6APYbrfDhdl3E6P
	oe79Q+Xid7dE03tIZ86pqPp55ziF1VxDdiJamti7hb0Gs8dL7YhsmYJslkqp0HgKfoF
	UdcfCWVrUvxiofxLvyKF2a3lre19sGP52TrDiSpM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646468784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3zm1LTv0mQPeHqB5GDyUKd3rEjI6MPrjUd8tSCX9vbs=;
	b=Fg7Zf0Llx5yiq3D70SPvzx9AlRTaSvZ3V3WHNkSXk3R0kfFFwk2Y7OC8WpoJVcn1
	gfH6kNsHWVRT2T7xT04Ew1X51Zm0oML1qL0kjrqnkmphAgtWHOkvJsRm/tG5Lw/eldT
	xXJcNI2p19rLFdVbaCUPTHbGKxZ/3du3nq3ydjtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f592fe26c-26bf055e-2c9a-452c-8cab-402036dd7c4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 097f6e3f14d40dd2c861c65438f305e16709578c200a6524b751d5302e392cfb
Date: Sat, 5 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646468784
