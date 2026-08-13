Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E963368B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786590034; cv=none; b=fo+EujUM+LfeGInLHDrPbpJDat6Xz++6SddSM/201PIjNv8ySt/G2ZhC2e0Cvd6/zzVkVuAUyYk0XhtPa+IWjDKTYVnjqAsRueNjNLZ7GDUbgPfVRrZVv361/EMsNEwiGnFTFuQsRoCaL4I4f3JJoH7Ey+IPBosDzFVojustZUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786590034; c=relaxed/simple;
	bh=N9zXTRsJupEWX6omCvUmy31wNZWFcFbN5PA28i2rTe4=;
	h=To:Subject:From:Message-Id:Date; b=bqcYAwT5SET63Scw8m4ZijwHf25CFxshPhU3bvy038Cuxhe6DcPFcK0SNZ3r4q6LeR+BtgmK+IhR2zz39dmMD9JeFufMXz/FwLOn76QZUAoaZD9SXwaTgvtxVzSdl7EcrL0HjT2RXeGT/Gu3PTP+nfQAD/L7eDVvit4VjBvTwoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKNqG4e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKNqG4e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F60C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786590033;
	bh=N9zXTRsJupEWX6omCvUmy31wNZWFcFbN5PA28i2rTe4=;
	h=To:Subject:From:Date:From;
	b=WKNqG4e2gUodJqvDH1wGvSQ94QFaL1iDdVsXm+VPCW/7+GO9eLhV5yqCOkOwv4n0g
	 BR0RaoP3AAd/oiqmjD1zw/Urlew27Sdp7YVtNE0tcCMSvFZ9P/wNkxNUy+F/cxwu5M
	 Z08x8kEjE3fkArUv4mTIgBDjzmPBhk3dA1gZC7CdBR2TpuOqUGgdFcJXHPKni6Kizh
	 wFKzM5J83rxXmn3r57dsHP96zm20oDn5ufNZr26Q6ArHlqkoOuHQXfRph9mN63XTGy
	 ZPwEgg4Wu5WJtxNskXYTwmKfhfsDFoJcQlGcqXRSPM6S3GXwQ7TedJ4grODkJnykHT
	 iIYJzhG4TEiUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFBC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659003368.21025.2690122264409016630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e01948295cb47fcf034d517e4cf14cdcf97a6f964346083ac86060ba477213
Date: Thu, 13 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786590033
