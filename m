Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F732F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647443785;
	h=To:Subject:From:Message-Id:Date;
	bh=MdhS5eZ7rIATfodHMcsRsv6tCcWx874CBvP7VSxbzuY=;
	b=ebQCZSxJSlGliq1nrsGhNgs3tl8pU/16XPITCM0S1kw4UdnU+M5CR5yPPfzpT2sF
	j+pFMP3Paxd63J28M4Gcu2hF5s4gPa4uZwvsS/v7KrFaId9FzAmw/O5xqcGM1FHMm30
	6gyK38qcAF/tcTRkDTbx1eHpZkxjmcU18gPI9210=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647443785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MdhS5eZ7rIATfodHMcsRsv6tCcWx874CBvP7VSxbzuY=;
	b=ZSMd6MC1ymo2x2RxNKQCxOrb6h+SMlmR2g5AMhkd2W2/XjCWBKQGqU51npTC93x4
	EJMC5M5kaWBqcJct50Ski64NAI52E2gV5869U+hiRotmyZUVgIlvjce/DS9QuapSgMR
	Ehtn7SVCCwQilAy5WhyH2X1cXLQzTGM+kn/GmPlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f934d34df-6888523a-03fa-4952-82ad-b63f3f2be349-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb71003b0cc29bee6c84a5a0c4097acdea77d53d6e87530dad18ece5b364cc81
Date: Wed, 16 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647443784
