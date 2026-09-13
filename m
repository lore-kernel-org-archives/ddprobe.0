Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4436B372EEA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789330834; cv=none; b=rd+NtIF9zwU2PZhUJHEqkqzuEepDrIn2fdsa8hBKSqQFzCX+ZEQJYpvKK4+wZg/BtSe1W6yIHR07PErZTrUgUupI4f73NJYe1Vhv5xkMgl16w/yrKMGE1iOVflVYUDRvgS+bivGVJ6zbG7JkkJQVrE0/K1Iq1fP17+dT7nag+2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789330834; c=relaxed/simple;
	bh=Y6I3G0nkj2TN2qEHVqpL5xrESnbixMYnUQBkQb2zqQ0=;
	h=To:Subject:From:Message-Id:Date; b=Gt9UJksMOBs8+cKwD+kzXmLbFcn8NmTRwtW/Sa6onEKZKJi96JBkFTKdu22KgODmR15XCb7Mqv/R9A7SlAp1Czw/j63c46KaLV1+1VLhXuf9GdXaZZEnjWO8O+V17ALPuyuZCSbdNuiWwH30l2M4Vd1b8HOEMighgHfCd3HuLdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3h/t6l8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3h/t6l8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF56BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789330833;
	bh=Y6I3G0nkj2TN2qEHVqpL5xrESnbixMYnUQBkQb2zqQ0=;
	h=To:Subject:From:Date:From;
	b=e3h/t6l8cLwizeRitVUKRE9q1fDateF0Zm8v2dJFGCz1ChbjKWgEkEws9fKCwfpbB
	 ZxN7IwgODPxdlJkx696cHmjkLIl8rRssiG4qD9sclPXp7nCXZtKStkuonL83xLENMJ
	 DaB8KqW7K8RCNB/leid5pkYfvPWsU1jbbr6GJHLJEtFbPb462CiKo3iieGn25c3Wzj
	 cDB/vvdr8u1v1j+wuoI9rwYAEmasVtOciF+HgY+dH+9HWrdwZnNtOs/HFzuvxugx78
	 CaPNY53THEY9wqsb+pxhOA6qcNWfSMQKlDdq1d1YAGspu7huS2Iaqxx9Vtoom5eb4T
	 NAAx32/7ymjPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA29C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933083369.8294.6582392583597220943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5119c498d94ec25f6081d8abb947514c87ffa53371134e84b668824fc8a72a41
Date: Sun, 13 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789330833
