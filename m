Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1324AA4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645200685;
	h=To:Subject:From:Message-Id:Date;
	bh=+RsHeAC+DgsnEYgJ9MJ00EHJt7TDfLdMfosyoRhCh9E=;
	b=hoIlOCt2xDRcFStvFwE4JM/uEqqXBjt+pPUDcHx94RLp0ydaUPRMvedhI9nt0/a7
	ifK2q1h/fLRcQ9fZUzHgOOY+7TjURwBSWmf+Xq9bfp0P2GoKeEJk5ah82KO/nU1CIA4
	Vpk47WDjaCK7FMWCw9itSM4P5+zYY/L0sF9Anc4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645200685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RsHeAC+DgsnEYgJ9MJ00EHJt7TDfLdMfosyoRhCh9E=;
	b=T9c8z6tvvMTeKoWiWttntAueYpiXntKkouxe0ni3FF6Sotj5gZJ6mjwiHbpNy20v
	H6Lvo2WX3HwZUlJKkI0/5mOmIEturotkxzeZeG9wIO92jk6npJ1N5vRilcWLSpT1GKJ
	kknPP074k5AhG+n5t+awDyAi9scT5ppu9GOoW/PI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d9a36eb-b4682412-6ef8-4992-8250-1198ef531e75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1326c514341eb11bafdd707d12aa6e4155608cc58cd9a82a2087e3578fed2d7
Date: Fri, 18 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645200684
