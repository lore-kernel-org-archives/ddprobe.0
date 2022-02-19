Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714115580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645289785;
	h=To:Subject:From:Message-Id:Date;
	bh=SkxIZoy/xQOySzri6zUASTkaKkhd6Y7ZuXXsxTzs7tk=;
	b=LfTZadReg7SG6i9Xn+0WFomjh262IEQI7DTC1aMd9aOPJVQNu/1PwQX4SG5dVWvC
	xTU5Fx6c9oFt3j3mI3qBZ4sWIjqsE0YlLKt7PRMdGzQrOBgU2IoTGD4hAry2VirktN7
	FGdTrMxK58hjhjrY1+OdAjht9n140QMKLSjzuOJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645289785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkxIZoy/xQOySzri6zUASTkaKkhd6Y7ZuXXsxTzs7tk=;
	b=UPOP6ZCIZEX7k1pF/ZhCaSlBBbC1emta7aXsoFpukMuEkC5SR53SID7S7jTcgTyH
	C/rij/oVzGuZEclzyRYRwlgKAumre5lVHGAaMS1++lL+Q6tzCjFLfhi4KQKYN4G/Hwt
	xPgNatK6yZh0vTaylrBzGvEVLvS2Vxvu43y5RmsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12e9c624-9595c2a8-8d77-40b7-8a8e-e4a773650d58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b11bfaafabf836bd4327fd714f995cbd725da32410743a443f4375ae283baecf
Date: Sat, 19 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645289784
