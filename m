Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4B20C038
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773372894; cv=none; b=iEvUaINDoJ2PufAANfKK2W5Odx1Cl4YzQt3aeQshOI5hCkqJS3OWmO53D3uHnXbrKZnDMlml285FYHtvsEof0J1Z8QUa2yFonwaqKWCXrlZowg4qbOnJhw1Gxl669v+fNbeYHiIyqDnwq31DSdf9cL4fxJsMwPuIxvwmxqpwMq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773372894; c=relaxed/simple;
	bh=1k8tm+Y2XShmi8bSRsbh/vt/QrvlQxs49nEiTyZa/Xg=;
	h=To:Subject:From:Message-Id:Date; b=UqJIz1qnVLCxkzdHD6b34peqUJyAUmwq9OSlhXFs+ErL5901HomlBYM7JAofJnOtrN4s4riXjlZMOY7g0rZ6e1+yHH3FZcq7kfWXvBgwfDS0Xp/1d6Y6GeRH7q654hoGAKKNQy6x4KJq/gtDMlrZ/K0NLxdDb+5o2lZPrPoteuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moEzwgSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moEzwgSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE27BC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773372893;
	bh=1k8tm+Y2XShmi8bSRsbh/vt/QrvlQxs49nEiTyZa/Xg=;
	h=To:Subject:From:Date:From;
	b=moEzwgSQOBg6xqadNfJNs7QgG8dHqACHvFxq1t5uHRu5mgttYGV37jWj5kWjidfcU
	 LcaRSJupmm1ReL6L13B0+vQecL/hFKWZILdFJcxFwx5vnk9SMNCPxpHnoMUplXPE11
	 HPfrYWb9oVmbdPEBo13mwbMCb1lKdvSxtGPltbbvZJfSWFyPs8PciMinh+83Sv+wHc
	 Jr/shnXkTjiC7f3gfxRfzEtUSJCFRXFtjZ09lItvSBjYeF2JrNxmGX7p5ZHxoCwxFT
	 U/GnXmWYtsEvb3KN2MVEn/Z5JrtiDAMWAvNsUni0+DE/ZrxcM+EcwcXIsEjMGT+b7f
	 AhjZGpwbtQIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5B4106FD66
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337289360.21665.12941300608574443863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e89c2d28e48a499e0bf8b5fd55efb7354b71924513d39f82b269bfadf9b1e08
Date: Fri, 13 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773372893
