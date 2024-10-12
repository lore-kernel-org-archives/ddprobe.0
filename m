Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF802C95
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728707754; cv=none; b=QnVn0cnVAK4cbjOu5Uxjeby8Q8wUB0V0sqGQ+o6p1M9euw4/XV5i3C5sjoe4dfwRdV9BOwllkJ2gKCO9b5O+HoGNZS+3NbjiLGP+as06K04y9kvpurZBjgodOsJw2lFO88mR2rrYw2qoV+iGLYMyjKJz76u6AMX8CygVLginQBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728707754; c=relaxed/simple;
	bh=4GjyUphMjxAxrOKGDqVvCWc6SN2iNDwRqFONdMG4++c=;
	h=To:Subject:From:Message-Id:Date; b=K3ARC9pIub2dJpomaOJs/1CUAAigYXC9xZqSo7zCQL3eTk+g5zFxpPP2vBztuAJSjQdWjjkOz/18fsb/dkvggBe69XnVH3wU/lDOqcxZsB6b8PDuxlTDtSzzk9TltjkQMDYXXCbx7El63/tfxCWltToflb6sSdpD0qFaZs3rPzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0MRWB1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0MRWB1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEE0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728707753;
	bh=4GjyUphMjxAxrOKGDqVvCWc6SN2iNDwRqFONdMG4++c=;
	h=To:Subject:From:Date:From;
	b=b0MRWB1mI/KDEgKbZ4PvFxuGI2ZoKODUQ8RbEZ4uOlxuxOlLedTVgnGTiT4lu6pGQ
	 OBi5Uw1g+1efVSjC3Entx7xBY6u3dlmdTf/436mfkh6XjxZp2trgCQKykWD0NrXI73
	 u9+OxHYQDETquFug8f7Qbo6UuQPx1uUzUFefaWo18a8t77kmPRQkS/8Io8zFaSkbjk
	 EmimR0Pgd4Obyx+5bJCjdWeaS4+LEsFpCr4gppMutzNJRqjijAdr+8gQg8X0muB1ZJ
	 eqK04wL03CD64FuuzUzQWjghw25DP+PESxYsekSVrQUlPLY9Fv2ZwvRXU0KF6dcD7v
	 7evBrqGXOVrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B91D1A435
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870775359.31641.6843090266867938125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6358a36aaa508322fe6618f968a20838992506ed96b020ce56bd8138bfe528af
Date: Sat, 12 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728707753
