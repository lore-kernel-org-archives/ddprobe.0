Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2744D38C2AE
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778362115; cv=none; b=fnDiuRJVbAw43Fwt2pWcQeQfHrcJWKelQ/UVNmenzrhAH35BWpBCqJcLks4d6aqtcz4WtrJuCqqtt8YkSd4p8ZUYEIl4oYR4APf36EYH+QuNf5GJweKZGQg35LOAqmBG2CS7D89hS1OaqGCvAJKE+Rr6X7j5CMx025RIbxxOS6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778362115; c=relaxed/simple;
	bh=OOgb4//SeIcfG1iouzapkVnnmH1jgHwPVK9UbFe3YbA=;
	h=To:Subject:From:Message-Id:Date; b=tf1Z/KOPS/GHj4QOrVrpzG1jSNaIs+xOPJQb7hvbAVyZG611xbDEoqO3jbaLOO0tYs8C974eQE4AiIxZb0Nhlf+feHKgOEon3zth/kleBi4eapkY+DK/GkrJJ6joun/xL2kjWzute4R8YBSJ0OS12xN17yK2KZrRi8U7g48Cn5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOt5uQ7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOt5uQ7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57595C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778362114;
	bh=OOgb4//SeIcfG1iouzapkVnnmH1jgHwPVK9UbFe3YbA=;
	h=To:Subject:From:Date:From;
	b=UOt5uQ7YWbv4ZL1/GW2aGhrz5kHXZd0bKmefoe6Ii3K5sjN1Raypxxr1vykL+OkIh
	 itI3qhme49z1U0Y9SpDe3g8c2SD3w4hityZ6LB+t5oxUHMjGlddIemUjofWKKQFg5/
	 TuajmloWc9jnzEcGcxW1YFHGOY6JhrFAHV/f60ulOotlwZh8h6zuG5oAZepgg66Jn3
	 nunM6QkCOd1qjhDCH1m5nnYZIts90Kc+IiMdgOILwCCmMffENpidxBBXkfGys97TCo
	 9H0dMhuR7YGuT+nq/4YHAGMXkRVyPaGHhRH0UKMadKuywFV68xTzQpFuAjl9EC5mXH
	 vsCE0WF8jE2UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CAC6CD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836211389.3335.11489740437247277261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baac568189573864e0547cffe6b5901461a309ec8cbffb48367b21f49d7f3a58
Date: Sat, 09 May 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778362113
