Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9B4A00
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752437994; cv=none; b=Gj1T0F3C1nrQRKkz7uAaYKWChqTolGMwETVAt73wSxTqaeVj0oHV8ZQnMG7BfQT2Ok84K0QcnD9bUdWZitRs47ZuIEw48C8PVag/AUl5w4FXG5MGodDACWDw+ycHjL+visXc6XdJD015KAKm3yqA1kqny1Jk4f6BfLCOKGw4WCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752437994; c=relaxed/simple;
	bh=puWlBzZp7jf8qS73Xfnt2o9Vr0/zG0pw//gD8XdJt3I=;
	h=To:Subject:From:Message-Id:Date; b=aFqLeW5zwur7vfQEZn5CsUDo9+IheqD0t+/xBa6tALPXasqbFjZBhy8OTkuEYB+hTc8fItm8w+FNGcBPwZIgzxds8d9EyJQRnez6l1CZp92Q1VgOM0jcxZfgcETbTwJoXzS80ZnZD3imwogTiq2zoh7v+gI60QieqClfsfnylqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAsT3s6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAsT3s6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4834C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752437993;
	bh=puWlBzZp7jf8qS73Xfnt2o9Vr0/zG0pw//gD8XdJt3I=;
	h=To:Subject:From:Date:From;
	b=jAsT3s6jzK7IVTGjeTyOQbuNHrEebKdHRqi0Xrwbm6vvxscEnE7DFHyxf7htQM3yJ
	 Vwaol/M5Jq6RCPK+85E5OEedgfD0YEzEIJmapzM3/gSWh174BRqsLI06TJm/uiLlR9
	 aez3lCcKGPJ53QOL1g5kg8wTvP+7VO/V0T7aOgngESIf293SWMfBowYejGOqqgWxUE
	 J8doc61vsiqyUDOAr69b5UiPZnDOBbAhbOmOrpIGjrPqTeODUcQT36U5skT9UvOZOz
	 dcCcs08q8y4ajpMNuch0WTUnDz2s6IXzzenwRHAJHPw9VcNoskk335UTaHeoVqbgkH
	 nJHovNA+LkF6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303EC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243799357.27594.16803514352910835336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aade08ec099ef9c295bf43879a3dda05aa6bfbc740de070b41277a6595a02ba0
Date: Sun, 13 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752437993
