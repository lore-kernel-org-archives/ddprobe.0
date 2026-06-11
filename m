Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BA83BE642
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781219794; cv=none; b=I7NhCID2Fnza+sNbYhWz0m2snzOxrIBf1z3s5uag1FCTsAD3jB+AYPBDAZqOt2OwOp839GqAzl9XR8znVfNAU1F2TdiQEr0wRVdLQTQEpescRSM+RM8Ry6yz5KJu0ap/6cppdxlBVnLMJU6LiWXbFe2dLfTAWg/KqXRTlAP9KPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781219794; c=relaxed/simple;
	bh=CnrRfI6CaxgND0ZfSv1O1aORn1s94cFdvLzMUhm7gZI=;
	h=To:Subject:From:Message-Id:Date; b=ZKQ+iNj2G4Z2QnSF/9mFMr2CWW8ofJwyKymIULsAZvz3m6jAcK/7a5RnJpjnpDSeaHdVY9YIP8wKDi0aw3qC1GqfoUbz1/71A7bSpoXh00/IgFB3EaQWuGBVXY3t3hhwbDjcIc0brYr8NFLg6ZjYcjTu2EVYpTlU6B38aiJ16b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMsbraw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMsbraw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D140CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781219793;
	bh=CnrRfI6CaxgND0ZfSv1O1aORn1s94cFdvLzMUhm7gZI=;
	h=To:Subject:From:Date:From;
	b=XMsbraw6JO43C2DfmWy610tLXM7R3l8Pmd/zXpL6s6SL8bs8+fjD7Y4iA1YaCNvtb
	 oPQuKMJkED6/NgGI0cnTqLiDxuMKpkYNUxdg/C3LF9YNdfrYINVZre3kgIMcw2lwxG
	 r0hnm/jJNZM/s76/eEnPbH1O19YF7eHGsaoupE2f/znNUFe5hrsacVhsWZik7OD6hJ
	 YxaQ8eocKqVhE8M3aW29lcTb11QtV49VzvaTTeRbiE1eAmrEUdyqerKTzRuTXEWVXQ
	 WgiFmJXU55X6YNugfYJV/kRPSmjOmA3IOSe1KyO38a47fvKyarbp5svOH5wBaAiAi1
	 KgOQgez3+G8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B465DCD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121979370.15969.17738474450507136391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed507227e0b23afcf8b6b1eafbd60d228be61cdd179f173ab6bae29667239dd5
Date: Thu, 11 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781219793
