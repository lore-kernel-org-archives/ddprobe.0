Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1367478
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788028834; cv=none; b=hA3SYZQKlZ5HiUgMJBaNKlDrzND2e+CQAcSJSAZgPxcmrF7RY0JmeybTd25/t7jQhyLUfDoLrFNoA0/XokHrKWINJ8RFW5zUcAv7DeqtFlQHwvlSX+Mbjg7stEMfCzIcULMMOi/W8XGIAtiJ9q8VKZZAzEwgVmXK0REqxCNrpyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788028834; c=relaxed/simple;
	bh=BFilggeA8876Vtr1Skcktt88Vp5d4Hpk45A0wSfnRJE=;
	h=To:Subject:From:Message-Id:Date; b=VtfDPMsM/1aI3hPHpH+DBdz0/tCbYswf+rdAuyrJRLp8OFVqROONmP41/REzEDIoOHmbZxTKgWOeX0PExD7LfVhxhEjHyfvDzDvHcsvzw7TEqsUP1GBQsjfvMYnXZYICkGNtx+9tu8SAO6X4C6WRtD9wmJmKK1soyRshDQzK9jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgA7X60G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgA7X60G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A78C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788028833;
	bh=BFilggeA8876Vtr1Skcktt88Vp5d4Hpk45A0wSfnRJE=;
	h=To:Subject:From:Date:From;
	b=BgA7X60GQWmQoK1uMibQLLqK5A3hFQ792oOTCPFrMRe1/IBFCFz3UW8jOi4ecb0I2
	 0ubY7ZBfu1vCc/r5NgFrMBXnp90dc3DGxtI+2OwCHjtFWjSoPrAVUyxjGWU32vfm+G
	 dpGeULPmwIW/h/VHLOsRqYAKXSvOzoRsyYXG9nFZOuc/ZjouROVJ2Ss8H87X6hE++O
	 bnRWUdnftvdgcha6IIzOBo+jb5jHY2xA1uc6suoDbCaPam7B1aQuv2siGaS9jc99lI
	 apJ/NUqKusQhEGtrIWemeD5F/TbuFZ376BC5jPrlUXEe+xyxyg4i8lEFuE41yWPBzj
	 bH1pxQIsTL48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEABAC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802883368.5357.12086607855820322703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ba7b1dba3a6ffaba7c93e4b8fc39008652da86af513a8f472751947a54a5e6
Date: Sat, 29 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788028833
