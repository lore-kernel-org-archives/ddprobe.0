Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6541E990D
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740217734; cv=none; b=UStqNGAc50F8LcHHjvOnI814W9IG/+ZFw6pqxcfGJApXWtP0fCnNyaSIK7DM708pNCjj/xVxJ/xNGGQmUMWEJbp5xpY1Sv7euzryC51nfDwqknTZEnpDRXh5Oy/IzEdaXghp/7bNAMR11HDd7l8PNK6/6cIo+rD+e99WXDk1FsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740217734; c=relaxed/simple;
	bh=xiYvn23X568wP/qXJ4pthAelMOg4IJoSMOzE+Xt6bGE=;
	h=To:Subject:From:Message-Id:Date; b=dDpobYkCp9Ck1sAfvI0ov6LWnqPMOOF4A8VtLCT404fT5c9vIm56KMvcPf/8mIbzyoVDGGgtQu6whqo7y3wVnpVOltrQ79ECIR9xsz5u4Jv21c3W9sAx2yKUV8OljSXddOvjsoOmSM7q/gnKo5u0Oe+nOVzZyRIG4TjypiihSII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo2sf7MC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo2sf7MC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740217733;
	bh=xiYvn23X568wP/qXJ4pthAelMOg4IJoSMOzE+Xt6bGE=;
	h=To:Subject:From:Date:From;
	b=Yo2sf7MC0YZsAUSEvOoDZspZcYD/36q/TO2p2LMCpWyqW+vR7JRs2Nx0dL4nERUz7
	 bu0c9+RmZTXHgPL3IUMcOScRO1XcqBue/bejjt1r4l+X5I/b03NTBWlts2ufZpFm7M
	 nOiWBL3DmVJRMLIGY8JhiNJJFyt3LDfF3pSXBcmg476EDC/+R4ogzK431silS4pYxg
	 Z4Cgp67n/WxtdgK3o/zKbMwPukZIqGE8+9iRpp85Shf5yVBFncn8aeHzfkC68nyLyb
	 AaXxkIrZo4raWHnd7mILdQiUOiNPSpM9ykl7SnuxQ4bgka8nqqobqtv8wyjorLRMES
	 s8tzrVdHs1uUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94952C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174021773359.4666.6836310010309511751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4649a1714bc99226fb6d32ad2584cbe27ada22d0ae989668a172b60b0c6dcd
Date: Sat, 22 Feb 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740217733
