Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7A47C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 19:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646680585;
	h=To:Subject:From:Message-Id:Date;
	bh=2Pv8rdZXYjtd8ywkdWmFUFTV101OGSVJvA+gPR0MsGU=;
	b=AmyT02KwYfCxX8OMSZ9nkypO+vKIhFvj4xd4xxpm3jhMpZGF+81Y1fTVAq/hiO5u
	i/1MRxlwxqR8u6L/4PUniE19LugzdczlfQvLltmXUsZOWT9zatwC9Z7U3Tnalkr/1bS
	onplZYncqSo6Eqpmghy2csmj83PAJrmzWdJHAed8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646680585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Pv8rdZXYjtd8ywkdWmFUFTV101OGSVJvA+gPR0MsGU=;
	b=KaD86S8RiNNgjCnjWRPf6+pcNxUKXrfA0xvz6eI9NG+F7pfLNJOYARRBirBsKx/g
	04EFczBag8PWjUhUJ8SzmT6fm6Ky5uWkM3LiIdvr3Iqm/6s9iMVDrgfdfC14FjCzuHA
	/A7dM/K/WLjqV1qiEK1RTEJCuGnfx+iDgo/42Soo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65cfb278-e2827973-8dcf-4e3d-bbe8-ac147ff79695-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba245c52842269834d8e27ab7d20145e64ef770ff82297b047eb226a9b1a314f
Date: Mon, 7 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646680584
