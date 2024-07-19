Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25654145B28
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721415954; cv=none; b=nqaTmJ/yMDCeGmY8UWI9PgynAf0AHVU0+MD2TAjlvmEjtT8ooIqK3kwtEGS7lzE2uXkDhtyC8yKwtx76dBrhjvUETyqncmtriJ+mepQpRuF9Vv47YANmrFXcJFDZW1Wyb5I70SOGdYCdr2V2dqTfigPBT4go999Ba446maQHK10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721415954; c=relaxed/simple;
	bh=oaZ9L5qFSCJlIObqTtd7PXAIW4nBhfmtKLGBIRnI9aI=;
	h=To:Subject:From:Message-Id:Date; b=FRku70vaiIe/y2wlqsmg4pnXcOtFjKFTdmQvluMNkpXKhfQCSPXYDqNaKMh3XSn0SMZDuGHX3DGaSu66bvmr12SDbMzDBMcOsKjcG1gri1IDdnPhwQhOF14IOn9ypked5+788qTfRl5sWHFPKL37iLN/cQNHT8dx5sLif1ZuTpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muwqGf08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muwqGf08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CDEC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721415953;
	bh=oaZ9L5qFSCJlIObqTtd7PXAIW4nBhfmtKLGBIRnI9aI=;
	h=To:Subject:From:Date:From;
	b=muwqGf08BXoKgCS0QMq/Roo4U4pfhi6Tw7VnAbZNpuMmArP5qe0VT1lSwTXJZBUE2
	 kQGcLxH9KyNgoouDzLeJeDmPtPdtKEu0P0XlRH5T5v2MtA+4Kpf1atWZBtfznxdZMC
	 T102vaa4P+UD0M7lK3daN5L4a+XrIf1SPGzh2VcwERGQ0ijehJ2HlLFVAVVZKtMvMu
	 OgJNGCPvIRzTNiQStYAkgf/HupVDy7wWjmUKWRvy0LY9GYV2uakw9zD5rYL1VeCHpY
	 4aZyGjzDMl+xphJyTtjO97okaz1a+zENk2+ONDX88+4n6YEc/JzEJLwGu+uQilKMp+
	 MywTMgw0lYNMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECB8C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141595362.7934.11886155829398275658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596fb627102921c8bfbaca695d494990da937ba1af07af7ac740d9d644bfecde
Date: Fri, 19 Jul 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721415953
