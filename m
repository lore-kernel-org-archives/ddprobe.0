Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E6A94A
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724512554; cv=none; b=lxR6N+5Pqpl08OWweWD4h/RutM0U4zznFeYeU6uXh+QcRLuEwo4TZAkgRSlDU+ZSrdnp9aXCvxkawFGuSq0qvjSlFOmEw1KOuxVYcDeo1D4Llh2KNXIHmvwSKqblJ2HKg04ZVoHro+JRmziV5K5dMAnJoR2EurbI0uo9IkPMf6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724512554; c=relaxed/simple;
	bh=WjgTn1uRKNTMKfEOPRe6by7VbS4niJEvyeGz4yr03mI=;
	h=To:Subject:From:Message-Id:Date; b=nCue1sVsLnsWOpWOvWsfZo89vo76Tp2FioB6/YnZYS+PpiDWJG5r+hflvl3RYRoU7d3weFnIgQ4AVujS8kCJNT9h6qD056n96kcDA9JutShrVl+vRS58kQ09ELcyMVc1s8XNpr24ux0JoMp1Y7MAH+6xt4dPMBbO7yhmTaepyS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGDsIO3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGDsIO3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABAC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724512553;
	bh=WjgTn1uRKNTMKfEOPRe6by7VbS4niJEvyeGz4yr03mI=;
	h=To:Subject:From:Date:From;
	b=TGDsIO3Cg5514Ps35C7+eN8Ovb7gxMQyDvcmvTrAfNS1j1e/7PKIsfem3Ke6kvFrW
	 n0YBbeVw+A1Fh9EHw8jak3USmWQFTmv0U1lX6IrsIYZZ5x17vPlb81woTH4cPG1aTa
	 k7oW5FLQFIECv+ftRnlM4aH7STt7A7NsSbjZ4KLQZ+9Di7ma4vW1V8PWiGeyQUGn5R
	 Sd64hXc6uEx3fAnmXQR9klPZMACVUgKBmjhDm/a8kcz99s5cGt06qAJWabnMJqXqoh
	 n4osr6eeujzNTdaj+tAvh+gYxjX+3tSC3VSCmMf7TRJ3HdPnsOfOPDppsOLvjgbnpP
	 i48TPKnEVq9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95543C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451255360.20972.4515812367366766452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89b53fd5cd9a0467e152b7d81213bc889a19c0b49d9083b7ebe051661d4cf7f
Date: Sat, 24 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724512553
