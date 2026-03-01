Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF4C327C08
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772371494; cv=none; b=LzgpLhWmjSV3IYxEBX+vG45JRqOvuEQHxp3+Gf0tPyDpRRU0EzT2nWRtoaiSL8A6iNATEmEZshQEEWD+37gH6lwWLZOZx8jj5/8jBlc6Se67Yp66xhaGCIm1GNfepc3Jh0KMQifjYebCyPb6X1ApsAm+5j/AibVNyNne9ck3b5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772371494; c=relaxed/simple;
	bh=Z3E4p66o55hSOUOlH+ADPviooFgVRFrdKl9H0aAUEls=;
	h=To:Subject:From:Message-Id:Date; b=sJEJXra1FILS1VnoRgHTr0ybjSvxhGNZysEZdMclWeWwf7dK+xr8DnQgDbzRO6oxfgFA8YuHEiTffMyBlJigttaA422WPIp8V7Z9AjD3+OEq2rEm0nfH6BZDM7y93WpL0uD4hLbfMR5JqToHp65IsVJKhRnPnrvyiJu7tDFeyrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nc1z8RqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nc1z8RqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9F6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772371493;
	bh=Z3E4p66o55hSOUOlH+ADPviooFgVRFrdKl9H0aAUEls=;
	h=To:Subject:From:Date:From;
	b=nc1z8RqVBQu/rYvoYGrV4mIY4N/EMO4kWWwaBDBS/Y2gM5WkFx0NgQC8wpJYfEEQw
	 FxpXSXqfMPYIL6Z8ZIxPx5t16+Nqz92le1bvO5VjQllorl7M6YXOxlm2FUlWU/hFay
	 teW1kbE3RnJRoYix5+FMMJcgUahKtXkmGkG17d1oOWzKLb2NdMo9Tz8DlsPP4CtIbA
	 GnvVvm7Tx7lln5vxWELJN8zeZEMYSJT3oCLbokp5nxyLC6T/zSIlqP7V/M4uOfWiF9
	 alRztZcGHiB2r2VpOjnZGxNndERDd0MAzgnWbaoSKgjz5QMtNmMs8XJMV0yaqGDH1H
	 bHfbo79Zwi/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C42FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237149365.22975.6031036401729441270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392c5c055c670ea26fc1c839ee005464edbab821573cdeac1857bb5817cb61bc
Date: Sun, 01 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772371493
