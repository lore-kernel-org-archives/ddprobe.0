Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DDE3D561
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774228494; cv=none; b=N9NyKwz1ed++Osax5UOc7IJaaaTTJBsNP5d/rTjwEyB4VyCHXBPXz8/fy8i6H1v3FUzsYMbxBwjRP+tBUC4PjwUb42awyEoc9Nr2QgJfbUxnkre6Uv772+TXbV+0pb0jv65jhuegdqK085WVUmbbOwKdqAVxpyPRtWBEUlAnx2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774228494; c=relaxed/simple;
	bh=EnkjNP3ZGp+fmNC8b4LwncCYmQRInkqHSGqegziFTlc=;
	h=To:Subject:From:Message-Id:Date; b=LNXThuqhaGibuR1jcSlPRksbd+bXCazO/MJgQoQJ8U4q5WMHXF4Hwoh1qlDRQWThRdVaTxa6T4B7tpEYEHYLQIAjn4PT1Cq7KzRNjgmwUCgeAMMhvuUVwPX7Rm8YxWVRqbE0K/b6zac4B0S/3GPMeiyMWtkt+5ezuSRVQN+vudc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OODiNYJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OODiNYJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABEC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774228493;
	bh=EnkjNP3ZGp+fmNC8b4LwncCYmQRInkqHSGqegziFTlc=;
	h=To:Subject:From:Date:From;
	b=OODiNYJhqKTGKV3aFeZtJ7/308Ik59IyEqieihVqokIyq251ZsQ8g1R8KZzbVCOid
	 rxu937DEd/mZMRBgbE8swjT4hVmqNXQMpp+TkPCbdaIskXLNdQE2kfaYar5hoeaY8K
	 /lrVD0ie84OHydBOFCk1ikorHQVH+s0N1RCCbFNuAiVFZyreMOgHUZamp8bO/UT3Vq
	 DJl8cq8t7sYy2RApXOE2r6fYt7My4okqQsAbp1pP41NMp0zmUnFWtyASExtNuWX+21
	 HPB+3PeR2HJYxhDuegg1f9J1KtdnjwUV2pqBJM8XpAqrWj/hZ8lzIhXJM+SC76+dM/
	 E2l1xbL8rC8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CDD58CBD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422849358.11851.18433260420128726771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cfd3478d5eb90e7da9a4aeeb2fc3992ee0d8baf71441b38c107e888927aee0
Date: Mon, 23 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774228493
