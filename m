Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FE639E17A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773158694; cv=none; b=aVMvVIW3snQ+6ucGoAXRKQCLBD9o3wxD5DM3F1WAQqM+Eshi3tcuAl2Gd8F5jKcwayQ478gPcJeA+R2uDzxZNVG1TBXWF/jNCV0B0/E8fLJ4dbk0/I/Z2Wpn6zGCpmXL2hUvvC2tr26tEAgF7D8o+MqJujd5rRyCHPcEzYsBq4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773158694; c=relaxed/simple;
	bh=fPaPYZ+xB1TCdBKOiJ3KUvYj50BsMQqlTlPObHNHD2Q=;
	h=To:Subject:From:Message-Id:Date; b=ill83CFXe56bY55sArfBqdZkFk0P/r8M/fZLCJU1P1DYPEuw+MqHHEuEbrdll86I7vOBwZ53oEPh8yPj6Ayt/AFTQQqc4Sy//891OduptxEL9iRQkph5Eh3PW7KyJAfuvmRE9a2Lm3eajMObxm6t+TDK/u9WdWPMfl5XJjDTxTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4bV5MWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4bV5MWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0071C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773158693;
	bh=fPaPYZ+xB1TCdBKOiJ3KUvYj50BsMQqlTlPObHNHD2Q=;
	h=To:Subject:From:Date:From;
	b=f4bV5MWkzEq2YfpvdZBdrxa3uVzqRJKqNS0vC3bxGB2f9eLuwSrIEJMDP9louMP9g
	 I6PiCrRuToBIEZgFYX8d4QUFEEqGXTWVErUON3KI+3Iv0DaAYx6829FPyB00j7sxFh
	 G3fSJrzMyeZSaiLiD3Br9V6XVkR3QZgnsh7Wf0Aa4txViIgGfCyQY/2vXC2d1Qr8h2
	 3JCjx3RK5nLFGBGTanyfPi9Ymf3Pe6bXzoV7kZQof5mGJ9662DCbCHjJH6Cp1iaYgi
	 L8X+2oqTUQDemHrnt3R7ahKfBE4uVKhBUN3QPsYGk7fUSN5xfQL2b4aYJG6+zh7sH7
	 x/WIpgXrhl5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031FFD4F02
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315869358.22277.11285007152630678223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c9948921500cb81137928cf11fce8117e8fb264309fa4601004339f87b1952
Date: Tue, 10 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773158693
