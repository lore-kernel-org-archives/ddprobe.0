Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0722F3217
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673049687;
	bh=j8+OUwFFAUgWX2p5QIgR+2TsocAO52eBnrTCYlyMong=;
	h=To:Subject:From:Date:From;
	b=BChMcvnLwGj8bjnWXoPz4vnBud3v8WIko+7B+HorZF4ucGdncg4ITx9Xg8/OKvceq
	 P6lEVvAPP51u8msOc4gPtFuPrl3neI1C9QODJBWD2lA3Pw8WVLizeqaZBQ2CQYMTIq
	 HaQx/7gDL1hRNHDBZvCpyhdX0zCFBTE+LbPa6Ie2uORBsqEf6stDJf7ielX00iCf4l
	 UNAlsECtMSleDPT+vqMdCRgWpEiWe2C10xc3WduCFawNxmI72o1PoVp6A4mhM0PKTp
	 BoLFhguVfk/DiEgpOPSEqrPgVZpdEucvhjoV9LGP7dRn/xBr5Rc4dQ5xXr17f3tYTq
	 53hoa444nkLLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AC22C5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304968755.7897.8259186056766466862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226b8b56614311d97ba6e03bcaec320fe644e7e93c80f3d4ff9351c14be588b4
Date: Sat, 07 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673049687
