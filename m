Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E66E46A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA96EC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687903388;
	bh=N6W/G2/XcHKqhUCh4jpLqbId1euMrc5OzJ7pcGvaSC8=;
	h=To:Subject:From:Date:From;
	b=TeX5YgG2FC09Y+1MzibZJxfUfhTEw05URHlAuOMI0Vnmr3AEr3TbQc3A2Gnl5bEnC
	 jVdYrwWvOmrX3MrFl7tZ+EoRv+LwXUCytNWD1ACBWqrPZpWJkPvYEDay5AHBIx3LIX
	 1RcpD3/zhVS9677oXasFoofW2QjGUFXuDyP9fDxTQKsBM64Keh8QNaaHWPON28Lr4S
	 g0FvGPvanLb3GCBb9go6rOdWzM2LK4cNy6+4TS05EM7Dvvc/vcjOANUpSt3SesJhDy
	 s0p0GA/4vMiemsokUc/HJHHLCCaHcQi/xEtFYq/y/REb/F8c8PjGo/k9puM5hCepZl
	 kBph+C1PdeZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FECEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790338872.10957.1406666083849846624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6b4b3597c3f4c8c4d9d1203b5b4042ea4dd402dec94cd66417a3d94e8a953e
Date: Tue, 27 Jun 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687903388
