Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A36433B3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761581394; cv=none; b=rSiAaQjyOxhnCG1adsyh2qYiYoWv565NMSdhVx8EvyAcVpvxsOhV7Ub+N/5hmJV5R40SbFGGyvvpaRZOu1en/pjMOUY8Kp95PI21Fy79jpvxaCrLcf7eXdDMG9UBYkMpncEl9ZwNoMnCZ4Mf6QrkHN0hrUMGP5bWvGEbnMkyd/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761581394; c=relaxed/simple;
	bh=fMv85KCdy3hDxuJ1y0o4U4ni6a0DNbyK3gPStyuPX70=;
	h=To:Subject:From:Message-Id:Date; b=QODMuLZhteZ7QxCa27wGCQ8tXIIh/aCARUvgCeOQ+FSBrMH1PVyPD3IHiebUj+PnxYT34HBLqKiU+PRo2wdpf2hNQnc5YuU0CMe37g16HmenV9ekTcfS5vWP2EeI5xiQ58JTeyAHJSB/3gRYqjQA6HcJxK4Sh5E4ORlUsC95cCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3Nac3/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3Nac3/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761581393;
	bh=fMv85KCdy3hDxuJ1y0o4U4ni6a0DNbyK3gPStyuPX70=;
	h=To:Subject:From:Date:From;
	b=r3Nac3/Kr24L/Z2ngnB9t5wP2SmRirwQ4TMcrEkH5roJCxjALurHKT2n/DESRdBr6
	 /aNnRHBJDRkcVy1PgDWrPfJ/GTBbFgCCpvOtNxnhRGJ8ipk7v5GX3VQ2fZkdfi7nK/
	 ut++Xza85gGE9mxztphkrbAIHFAqz7m2ulMEYMqEFA5C5AIE4RbvibwNupTIxAhPnW
	 tdYbza/oPouviVSrvgFH/9Ljz+v4Qvb2WjLYOZleXGYcsq5SMXxWv2wflnXKQFk+GA
	 XTZwLJC1dQt/DcG/6gr/SG0tXZpq8RdBoiX2NemV7CT3mIvzU/Pg1b1ANXL2PQEpwC
	 iH7t4Ovl8cIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BFCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158139360.10955.2088894199139938443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabb823f8e78b686f04f25d3a321e3be3bcd54c669730a9e57af3578731dca25
Date: Mon, 27 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761581393
