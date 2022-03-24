Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1840C7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648123378;
	h=To:Subject:From:Message-Id:Date;
	bh=efKM6Fucdw0O190IkjEHAIgweBrB3V/7z3ap1WuAGvI=;
	b=G4Dl0w/rLV2iaZjqF8a5ibhCGHsnSxGC8jlfpfR3cF/zWmhbiv0hi86dfZnj0s++
	YKmS92KQT590eka1HYHwhYy1vds9up5JAtKsSVzf+jgbqRBZ1dHKJA22UU7k8qmllFr
	bAiXcnqzprLRIXIMO9p8ZYebz+g/qg9TeilDbP6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648123378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=efKM6Fucdw0O190IkjEHAIgweBrB3V/7z3ap1WuAGvI=;
	b=Wt6l8G1ouNGSR40l5vypceDLLRAm0PhDtbV4wDslFk1fXUAsZNuFQoSMI85cN4Qe
	Q46A+QsknIWhqEaazXOlXO05H+wuSwRrJSkxUrM/KBkLIR5eS3B47T3m4e5gfjhI+Mi
	KadFIWWatoOld8dRK9Lv1qR4TogVCPRx+zx6hiuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbbcefa42-a271e3c6-26d2-4de0-87e6-cb4d9771b1da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7630616a70f025cafb28324bdf4090c6c0cf74fcf5f0a9de43b05f0646d49e6
Date: Thu, 24 Mar 2022 12:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648123378
