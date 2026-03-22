Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B96335555
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774189494; cv=none; b=FZPgCHrc1Tfc2JyiWsjSagzvwEB060etIHgMV02J5kIXbhFe3DPkJiKjUKxKoVYwCVkQTQ7KFFtgPHb3qOZhujyOoSG9G6BSL5g61R3yBoDJgXPK0wof9RLWWNECQfk76CphXLVJ8kNRWqlEV1/XkBPhNdTaHbAUYJItNl7TpSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774189494; c=relaxed/simple;
	bh=baK11ybO2HaIvMvmNmFDAejWJBjC9EvH8HleCtNEdaA=;
	h=To:Subject:From:Message-Id:Date; b=WtyZvrPA3IRrK42scnc5r6kku3/DZr4xOJecSpof6aeOYgIQwfWXHu9gBhr/j1bpwZpbujqU3TZyHcv/5dqRdErBHvZFHeDBSoHxrSTE2Q/4UdQ++jI4g/mK/nQJSvAuTi6mWTPFJB8jzSPUO23Rqx9HfiSXXI5DKHeN620S6lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+w527pV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+w527pV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C87C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774189493;
	bh=baK11ybO2HaIvMvmNmFDAejWJBjC9EvH8HleCtNEdaA=;
	h=To:Subject:From:Date:From;
	b=J+w527pVc4Wq3PdmwSFWX6Wx6TvDRcAE70lyd+WnML7Hkbl1Qqp3KLEicF5UD6S4z
	 UUFmQ9UtnuqRH/bry1sCzX5LEgkMNuJd8MWjw7A5R9x1s9wOkJtK9+rfQzWQg8QOMH
	 NvgTHcgW+4wIdqVeSbomq54BJ43lVHk4jlRCyaY8h//jTbxZVcl9AeV2M4LRpHQ20F
	 AQAOAbxy69Dn3VT6TYAiO7mXE2Wm8Arbu0vfvps692CTOaAqqSvbfgwOipJDi3yxPR
	 8NaXNKrdCCZHqtNr66aLBw7bCWHzFliCDuA/qpKnwvvRZhIU+6Zh4dO6JeVkecFjbK
	 Fx8tF7Xxopg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049BFC72C6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418949358.31383.1436942596347247546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81e43fe1236244009b5253401ec42218e2669a0baa30e3d0a46c46c4c9ebbd9
Date: Sun, 22 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774189493
