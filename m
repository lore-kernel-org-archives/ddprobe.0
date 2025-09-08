Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18630DD18
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757341794; cv=none; b=YYe0IVWBuF6ddexy2S7j6GXZ/WA//z3cqxRINy2KsqkVJzEiO+YLj+1z5LxU/Xi5lb/Cps/2AwJhrT/z6KfQ2AwCWhkwTlnI6mp/wxDS+ZCLCchQhZTkBIqgbYlDY7ahmsSqjkDb/gEaMghTAFsUmFi9R0HszDSDxb5LbrHW69o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757341794; c=relaxed/simple;
	bh=QochdXAE4RgQMcSNCsDhRhGW4mjCSgmb2wlUQyOdouo=;
	h=To:Subject:From:Message-Id:Date; b=EZ2D/T1B2uMBqRhpbUXN1ch7Xc3Tbc2fZ/2MBtsyMfGNElEhTnfOrZmu3BR4Hgxt3ulI+yHPHm4Qxm3Y5zltPP0MoA44LZUk/dYaGJH7ZDtt/NaEdlMDYkEpp4lkq5jqyHHaRBX9X/TweKaxQq10VkDGRhv1eJ1qDFbhP1yx/9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJgE93gX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJgE93gX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A97C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757341793;
	bh=QochdXAE4RgQMcSNCsDhRhGW4mjCSgmb2wlUQyOdouo=;
	h=To:Subject:From:Date:From;
	b=LJgE93gXi9gbfbOBo5NfT2Ml+nebdsQhEBwmnGN2KeELjai5BijTg2+prCyEFMtKS
	 OREjA+5iJ1a4RoY6e5zeRpqu2Pu1dLxvlIkrX31zYQo3gC8hxlf4XV/ehd4kzaUyUu
	 VlL38gFNjEV7EXnqCXnVn3MwCV7zqEBbln8U5pTtgzTZCAQI1/Tyu2TLjADiSivjzd
	 5qJOVgHW23n17+wDThcVzdn5wqOFe7T/pKK9c31ayk8ODEM+fmz+l3VaPxm3VASBRC
	 /nk2kYstpossyHhLBXsXlW61yNColUiWOeoIoZnpf4ON8+ZoL2UqZGWGrz4OOIUkwd
	 WUHMTH4Hstcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91654CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734179358.21167.5201494796709469307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4b3472cbd51e881d0f83570df40cd2be820a0d98470cf68b9358e8cbd9b1ee
Date: Mon, 08 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757341793
