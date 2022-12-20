Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3244EA1
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC93C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671497487;
	bh=3S215Z3AmLmXqhtV+8qULxmShTejDG2Mo6BuKUuy/3U=;
	h=To:Subject:From:Date:From;
	b=A6GGcIRAZugLU12bZL0Hii/4KkaLugOsSMCZ2mZ+ne3wOWOnNiSOedVIFIno4ueBj
	 ZZ+RXaiSrWzwNaT3KOCQCmdWiho88q8KgKuNNLNGtcw6mUZM97lWyM0RvGbNkBDA3v
	 02giSE2jdIdWnXZOjPY0GFwDlyDZnTXvRGPGvOS/OAiw3zerV+4QT3Naxq+CqGOCbr
	 CWTHxJAwQWhT0lk/vNR0+D25Y5gd21hUKLtlHS0E5f16ojpyL8cdlFuCnA0OoSm2Fr
	 tNDukJV/KNuH5WhdE/ZThh+p4Hq46To2289/KlCpHfYUCEWX5Lnjw9Rs2yXGKNI5Ll
	 DEd+Rgneua5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65230C001B2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149748740.7678.15130609346334573827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e3e2f2e926b2b3d469954dc1277446f2f5572809a2eadaaf093164429e552f
Date: Tue, 20 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671497487
