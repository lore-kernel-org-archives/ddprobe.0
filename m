Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E429E2F50
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650021298;
	h=To:Subject:From:Message-Id:Date;
	bh=oTIJ/lRfAGmgy7QrCwB1+5Wu816xAegZEZCh3KSoP14=;
	b=aVGoPpoQhWNZ4KlR1m5yeSP4eZwKMvy5/BsPEjEjFyJDF2NrkXyxyrnhIOofuwDW
	ZG8k2jtuRr6sVQ6hX1A93mM9MVHmzSh2GEXY9FpbfXZ1k2oKDP5nHYpuqGF43GX9Y3K
	qrr/e2A4lBuxUETjHynnxR2/J1DNwPBp7ZMNdzM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650021298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oTIJ/lRfAGmgy7QrCwB1+5Wu816xAegZEZCh3KSoP14=;
	b=Mukv3JVQjYyYPurv62nqqAEGC4FARWGEudhIs05ye/OYnLx31h3GV957n+6Kgzuu
	ebZyJJHGEPA72KWVICpf+Gm46N40O0hLWjcjltM8NYLvRBYtwJIWoId25237bbFLL8b
	LXXh7JkJB9APO+jcEXNo8FfNBhpcYcsRaW7X5Occ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ceef063-04499ff0-4d13-4a4e-9b00-e9daf5db4af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2722e7888b75013fd29fea77c976869dd53f2b1412b9c0e731b91bc3f07eb60d
Date: Fri, 15 Apr 2022 11:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650021298
