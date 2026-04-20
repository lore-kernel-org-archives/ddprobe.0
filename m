Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E016034751B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776701853; cv=none; b=Z6r8tajS1+SfnhxplrkEJgT4VvIgP287CnmieUdI9OL1CoRZzm7wm769D5iiHr2dtZcucTPW0IbCivtePemh29uZ2sHKCVM81XRrIIwXpPgigrI08cFOvgVfnCloQWD2J/Ris1AYcNGz00pDELJOwfpKOmUZBs3zydbyGKvp+sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776701853; c=relaxed/simple;
	bh=hKV513E/ea19jHktD5nLaC6xVdu4ndGVWjpRBrnlV0A=;
	h=To:Subject:From:Message-Id:Date; b=u9lEBov0DG6t5NIg0PWHzVO4unXuecJ5jVvPML14eYJHXcgD/gr4XghrwpKEORw4N1Hbs/3U+afp33oRFWBnCTvS2houYHvd0m1UhX3rFE7/Qg2dFIv+AemitLnq3NoTsKc1rrlHvE75iRasO1tIDOoT9fcTuSKw7KqhdbBEcIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5iUM7mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5iUM7mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD465C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776701853;
	bh=hKV513E/ea19jHktD5nLaC6xVdu4ndGVWjpRBrnlV0A=;
	h=To:Subject:From:Date:From;
	b=C5iUM7mX8yhxZMMSsQsQZzM9eM7XuR5wOJGMym9oOH6bqtwmL3PpjEpiFpjWvhtA7
	 fUaygK/dNZPM1038KDXrXj+2NbdS8Q7Mh0m/DqSk08Xdeqf1Ik1TFBdJ/G4HsJzlgc
	 mBu5tFmCv0v0AgES+obCP8F1U87T5iXcoKLce3aHV4Oj9P5bi/VvDUcYYhqfAMPT7R
	 /UWibs4HYUEP6NmN9Dub9WTT9ayVp9bYJoABmeWQNSlqxjYODPRPRW2MBp6ivWaQD0
	 9GhfQQL5R9jGqofcZIFHDXtcfYS42ZuL2ajoV7dscl9Zi9NxbBcsV3H3P+zLGY3eA1
	 45G4RWwBKjD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB22F588EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670185368.3119.13212983746119385376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942f52f6413c4b2926d8ef52c9ae577aaf21eccc710a44c4982273c472be79d9
Date: Mon, 20 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776701853
