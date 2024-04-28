Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6546C524A2
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714289543; cv=none; b=Mnp5CZXIUKkwp047DgRVZT2M9c2ZTYOwQ/OksfyNby/Pt90ai/2Hf9FWCqN3Me9qQXu4ab+dxetktxz/KWeyrQmUO/C53YNHoKEcEvwboRf3P/U30zEoTeG9uAQTZa1NAv28pI6/J9koTIMOmDycdW84ui2iHU49FxzefI+dB+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714289543; c=relaxed/simple;
	bh=aWuN2ZWEqJhXGzKfz0SUi9aQGjuK68luxHsgQL0uWpo=;
	h=To:Subject:From:Message-Id:Date; b=Cga0ZFJibWCWlYcFmh17HZkLppJL3eX6dKABwWbGmc0yzDo8l3yJRK+sjtHy7zMG/KZ83X8mqInXwKbVpg8UW0YSers+PMR5xzlNaf6yABZRjuNQLTxnp6fjkQhWEL5toJoJiKM/BWMwv9IxaMlZuzIpSHnJMKhkkfM29CsRggc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAzpIX2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAzpIX2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB337C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714289542;
	bh=aWuN2ZWEqJhXGzKfz0SUi9aQGjuK68luxHsgQL0uWpo=;
	h=To:Subject:From:Date:From;
	b=KAzpIX2QULBXeq9JhlZ3RN9aBcbSXBPVli/2oRz90Flf1pAXP99KnvsxlZPu1zXHD
	 z1n/1xadctUd/vD0jkdaOUXwpteuRso9+phftODSe3OjiwVYof8O2OnM0tTLMfQ3au
	 pEg+5xiLTXV3ZnW0SPAeR3TDAHdch/m3qVqJJSeymWaNSDGiGicw7DwefEU6ZDY75z
	 OX1tqjLrmhj+UmFJ/TRs3Hqpz8lA8+DJQbdiNbMex7m+ZjXV1o6CrTrInx7mVSrQYe
	 yVH3E/kvFEgbhFE+DWjwDsPbLHkW2KF05Tg3f9BysuAFvZDASEObaG7+0L0uMLn0/k
	 FcjdpvxK9DyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B35C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428954276.29899.1809094228836865949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4565ac02426c9814756d6e55b3d06e597236864d54f207a95e86d40afe7686
Date: Sun, 28 Apr 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714289542
