Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22752DF76
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766885634; cv=none; b=ZwDN3i4u/MMmEqisZ4Dep7emb8IEdr4CaIqPCLiBPjV2dfasUpYwyeOOaq+o0Bw69NRavsdjRnwafB/3Bqe6fJy3xwSnTruuDCSiVKFwMc8GiLvJuGrJQoi4VI5CSYLZvh8LOg9qeu6GQ3RQwJxrNf/rXIBUW0hOxBIzxyBxuwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766885634; c=relaxed/simple;
	bh=IjLIB/jw5AFqc2oODw0VwOZ8CkZ0phXb/IkTfEYX/7s=;
	h=To:Subject:From:Message-Id:Date; b=EaAx/eZHcxvZaJuDMycI9HXzzPEMVpLtNvr30rLSY2M/maR02JdaoWIrT6729vmunw80skV+zJI0cfcp5hTEylJxeGu019SE3VeWGSF5KQIA0lYkqfvetU2lNM6vi3BAuo1jo6S4pgtSDWHg7ajTXZ8RfxG1xkEMhPEwavpYKsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5nXf+nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5nXf+nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00F3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766885633;
	bh=IjLIB/jw5AFqc2oODw0VwOZ8CkZ0phXb/IkTfEYX/7s=;
	h=To:Subject:From:Date:From;
	b=F5nXf+nfzVPRlejhghB/SPFZdqzo89adK2N/WwnbPkrO79EAMOWQFiIzhn9X8FmT1
	 r+gYx8msEDJQW8pEm8mHowqg5bK0NTsZT+saU8LHIL/tiTIbdM0wMO9+FW7R7JjpEo
	 PlV6EIIPiTr9GXd+nmph9DyKYIdaNmuHAEJMfEkMyVrb815l8kptq7qbdJ8wrVBEmT
	 Msy1q9+D6Pp4/fbLwdP3R/FVE7hUzh0BGK4jlJ4D429PGDoBRY8tX7FtFvMrAd1xum
	 26iu0ssnfprJ7Nf6HWAH+oe3GJ9+hgWt820JI6mDQz0lC7z0kJ5OPe2kCCDVZ0j1/m
	 f381qTOmsk14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A165E92726
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688563361.15092.18259367304895412725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce10ee62acb234c631d7aceb823bfd3562f7e07ca723c2becc9721e04dc6fd6
Date: Sun, 28 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766885633
