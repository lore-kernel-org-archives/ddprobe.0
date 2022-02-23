Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EB1818
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645628785;
	h=To:Subject:From:Message-Id:Date;
	bh=D3jBirz8OM0SHe2YUefquXQmBW7jkPworWeFwKtMSUo=;
	b=AXzfgSSSwAn/vlkDJ3xYPkLgJTeEH7/nWRtrpIm4cE48j6XGuYBt4pc6OVvjTsCa
	D9K3tAGILf+OKA41JwlrXP8SUKilCZPGNaKso1McsgMja4CuDSTqz42dlphvpPzvWwv
	aGZaGuwKadrT0+/QRq5AKq7+wlXkgzbkkMKbjHE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645628785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3jBirz8OM0SHe2YUefquXQmBW7jkPworWeFwKtMSUo=;
	b=aTI2+ZLzS3YBR3HTlvHjpLE6/Hiz9NiPS8xKeFgWalJe2N430jl2XDrXrFlsX+gv
	Ud4yIwt7FgUdV6aPUJLV/B6a4ADdZs9WhyDo+xH9vrekDqTSW2QIUFx3Mbh415knfse
	j/JAZda5EaBfB8OnlDr99/lYqaH49+0h+MrJ7wPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f271e80d9-e6fb3f47-5f82-4e1a-9b52-f99cccf55072-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c16eafa074a8e32065c01c857124b14a862080759a18e36576b14709d76c9a4c
Date: Wed, 23 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645628784
