Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C109189B8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736885754; cv=none; b=gaGSSjdq/bgxP354m4QJUZnDPUC9R7q3fACwUlbUKzl268B2ixPeyKeUQcDsDqYjpsSy+5o14CrlKhpLUPKlICiOEbvSshB0Oi/eIAq9Lh1rpyY00EJHOBxx7RBY/hI7FPsld8QGPdsBmTArIPY06DM6OOAIJpsecuxBD30v10k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736885754; c=relaxed/simple;
	bh=2XCgdyzx3zFKpjnvtCS0DRvA4WzRA6DdirZBtM8FNAI=;
	h=To:Subject:From:Message-Id:Date; b=TUQET3U2G4GhR/3Gp7u4TZ6ksKTyGTH4gyrrKNhcekAMa0iBGb+t6SdTjNmR4i8FFLf/u0VLO7Yt8lB8YNxb2BcFmEzFThURr0jAggKg5wluwSAajeBpeqeM9NWC5qLftauInNHb0HqIgIEhQNXDrxW1bHq4dmYKQxwdXV9tdHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3ZERIxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3ZERIxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736885753;
	bh=2XCgdyzx3zFKpjnvtCS0DRvA4WzRA6DdirZBtM8FNAI=;
	h=To:Subject:From:Date:From;
	b=V3ZERIxp/6CruIgFFbRQ56TTiXWJMs4PV9YmHQaIkUIFLsuFj+D8MzDkVnd38VpkE
	 omxwZjEEvC/AaBrVPOUVSO+zWv09L6ZX3OOkFmatDjSjM7Rtt3byZy5sKtq96KO+vl
	 qU9Wmbb8jxM8vG+KUKb6kCkTRoy+yeKZBtj3nDYzQzcEvFfKny7oHf2n6Dhx4AOlO/
	 viPc2G7H87Nw7RwlLXsOVoqOXmJgNeYFUGnkDqAgXm3yHJ18zW9o0VzDFZWPaNzhwL
	 LWU3+zjkYmGyfZqSFlLS325kZmTk+6y8C3G4EB/vDtqpV+5nVuC1e401VLI5iwrgtj
	 KJ/ZNdSsAxNnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979ACC02185
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688575361.18230.10895746564217906758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fd466da33a677cf69a6fe22940f6206979e135845dee451c069cb9e15f1487
Date: Tue, 14 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736885753
