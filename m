Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153EC284B58
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770447834; cv=none; b=SkGIw+LM4lnx+/94qgxby9Doq56q8HN9wYMenyqX6lctm5cJ8rUtJB5guSNDiMg3Ohi2Pd8vQdYZdkPC2/la1SbQOis95j/hOnkjlDqS9KfQGQ09g8WFxQM3j33rIfwV2Qc0SfC3IBLtOr+udKuJ/8bQGhf5bDgOgz4hNpyPMmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770447834; c=relaxed/simple;
	bh=iRD2r5DPUFzpCunLAfLKR+mo31xbeQvx/WAnfFjP1Ng=;
	h=To:Subject:From:Message-Id:Date; b=jpIpB16ZG4NyzEpwFCH+Gp5l7E+tYksNMBg361gQJ+kord4zu0/jGQCHNsa/uy+z9bZojEZkFwnLbVeSq9UkejdBScqXAFW1d+qJHWS7q3pOAjn+8ItTQ6EtkqBKMKqew9YfUu0gApULNdFXjl9pp/0JEDUFSf6nVGcQAxUrS4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnV4EjMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnV4EjMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9486C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770447833;
	bh=iRD2r5DPUFzpCunLAfLKR+mo31xbeQvx/WAnfFjP1Ng=;
	h=To:Subject:From:Date:From;
	b=VnV4EjMfw9/r5pyJyXlNL7hEMlQM2gd7zTWYuJxZoLs/IjTaybg30ny10LWJRDaq8
	 sHaGB26WgLFK1Oh5UypG11MQ0BmcZ0kfRWjxvpZrUxU3PL8T9F02FG2wMhRRSHL2+l
	 RDgCAs1XeegWAecQs05Yf8eEOnCptd4DcqaCWYxoKrK0hbCbPxQ1jrV6XFRj4q/lim
	 Egih/bG8bojRe9vNl7PqMc/xOUFe2D6hMVDJGJ0FqGKmWSHdHjF0lfW+yUBpZi2FPU
	 QvcgXJIx1nhBPFYJukgSkLq23DHY0Y7gf3mLK7pcqtEQASFC22fPiwtBzmyxeyNOpG
	 3GcY2D1iwykxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97393EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044783358.7928.170323352235839338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833939fb5436aeb0f0dd35b5212edaf50678b719fed902371af221291f419ffb
Date: Sat, 07 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770447833
