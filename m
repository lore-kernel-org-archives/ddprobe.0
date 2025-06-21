Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396EA22331E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750526394; cv=none; b=DkP410TgfYN7UlSqyL2i2AnOhO35UwIlN8Lka1OXuZi+nxO3S3RMUdBGag9GF5pCcnTJxzU8bkEcVSUgS9IO+qaQubM7I+dL6tU4G+86BZ4K4iEP2+forIrzrjU6GX0mwj2ZMi+ZqqFYTTaKRIaPRO7zqAcKTADrjPbzN5Kb6+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750526394; c=relaxed/simple;
	bh=V0qb7ljnawxA+AnfL6d8BaJdSQmaVEROr1wamxCEKFo=;
	h=To:Subject:From:Message-Id:Date; b=o11phbJ8pnN+NiGniRV0Hqom6W0ks5u3hGJc2k/tMsVKaOgeQdVgILXbK46fhlJ2GJv6HdbG73tYCeut4TPRQ1PEEENsdoOjTXRPV7Tg8Ovt0Qqn6HuwGpIJxvZFZtzlqPYxjwaJKCFDX+IVDF/gWcT8XxQQMHbNDnsmfwWMcxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt7OGbVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt7OGbVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC36C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750526393;
	bh=V0qb7ljnawxA+AnfL6d8BaJdSQmaVEROr1wamxCEKFo=;
	h=To:Subject:From:Date:From;
	b=bt7OGbVhc6qovjr2oKtJIoUHEokH73g+2xMJGm6atyL7LOHgxhOguJQLChUlPJGJF
	 J/CFIQPd8/oFAYv3mkyMbUgmad21yGlrxMZFew0YxsnwdH9HLu+2Dm6IZtF72X/G3o
	 y5hZ55x78DhV0TvxN+1M3L59h5eJZImfm2r5hZrzk96YsbQZJr34akr5my9fAp4Q0M
	 sTJV3FW5CwT/P0dpK0lUSnKGGXHO94LZT2o1kv0yn7NGNEvNOyyveaWzGNG4op2Vh8
	 r7QLoX+EjqjaG7UVuSvswwqTrl7pJ7WlyliEkh0kJo+wW+ZF7bsqsfo7SOkn241RW9
	 dTKDtL45eD+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB47C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052639357.10400.11527238154651475596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fb5b464640016e05528f8ff5169fd9bb5d002cc768ec7d852831cd81d845d9
Date: Sat, 21 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750526393
