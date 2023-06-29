Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4C912B80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 15:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3784C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688053388;
	bh=uGrHSY2HLAPYOMzJg3Y9SNbgqYuNjuga40i7AKrbQo0=;
	h=To:Subject:From:Date:From;
	b=KyJZaYAsE0Z4AIZiW9Kfji8+8xxqdkxpVRXgueApB/bzeo5XP2fvrOpYQYJu3aWdb
	 Qjvzzd/y+lQ92UMrvMOT6BgdVtHuQRVoluOpANLrh/xOjS/92KWJsqqJ5L4SaiP/fg
	 PuzM4KiFPVqb2HzIOPVHsYL1SCaFaZIW+9RGC4+pT9Bv52Rl+QibjnNKnqCbz+tTBF
	 U9y/3RyMTmzM9IkSa4/1JO5DO4kBiXaVpCo6kJtP6YF16m+G59vm9tXi+863o9ygv7
	 XmlACdeP3bf+/cX9K9Zx0askW/lhcmtKUalP9BsCP62Yblu9FgVCYbnNlaBeGVnydr
	 +1LT+pTIUkpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5685EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168805338866.4947.16747357978914733628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb41b15ba3b7645bbdd62e5a14cc0741eb9d786fbd2a6f5e7351f0d3f7c8c39
Date: Thu, 29 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688053388
