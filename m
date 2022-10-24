Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C975A1364
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3E4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666569653;
	bh=6L2ugFVSdJNBomtAeuJyw135aIiAoOxjoeFRT1aCn4s=;
	h=To:Subject:From:Date:From;
	b=dnAY34cDRxFiUAskoNKD2uQgGrK1BvedXulMfdcdqFbBs8UrHJR7g1x6l6nkMjn8c
	 DqubXtnEa11Slggora7Y09UVMROWT4vp1AUGQqoeNJ+y/dgl/goj318K/XI4OCbjpN
	 ARAKsSuZrNXhI44XQsLLsCkm/kq5dP1FSIY2sac10QhIozsVBStte9URq49TSZPzWB
	 cXukzcFHrHrE0NoZKWbUizfvgNchiKEBygjKcjelE5r5epGrCuF7IWBCaJ+FB2ZZvk
	 gy3o5y5NJWzoCWsJKVtfjKphUkiBJVmBPaZw7FHKUl74QS6xlxqGO2U+hgSOWvLWeY
	 0UxvW8MklkSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C3FC433FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166656965331.21072.14171900615509635574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45df748a3879aac9c0eab1c0e8303f22723486ef7e2a8f4c56d340b0764ab48e
Date: Mon, 24 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666569653
