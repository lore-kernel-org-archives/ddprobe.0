Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B72364E8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771920893; cv=none; b=ZALYyO7V9ttamw8muTmsaP7ICDx9XwqjH+/oGHcQmkGVdIXBolwrTZawgXIH8H9U3i0hbl1FwAdC/xMdJ9hdECkDhe7vMmWoTGI3S1/kiTDY889/E0uEuKjwJuvEnZ4hom8UesgRzAvpxiG5DB80Kgsbb7RAJ3Kt6vhzYYFBojo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771920893; c=relaxed/simple;
	bh=iNZAJ1Q94Jwhqhq6T+1QxMDasFZHV0d/lE4ZapzYETw=;
	h=To:Subject:From:Message-Id:Date; b=KGIRmQhcgZ6l3MVX4OMyM7l4gkfmz/hwGaZbX6hbmcjch+PgyJTRHGXpRnvp+1REDNaTwGaIhjg3lNGhof1PZYl9+YfaVItiWM+Sqy4wd0vspz2PYyjbHh8L6jRwGy4TGb4hif6DGEvlHItHebsxsXWTdL/Bc/tZxoD6NhnaiBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4kIfThd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4kIfThd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDBC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771920893;
	bh=iNZAJ1Q94Jwhqhq6T+1QxMDasFZHV0d/lE4ZapzYETw=;
	h=To:Subject:From:Date:From;
	b=p4kIfThdXlJi8GDhoKFck5MNR0ZS/dpDw7NYelXfE+35FZ5Ty5Xo6F2JzH64Vfx5J
	 5kbWNMjGPWqgoAbKKV8fvubifjav559r7vY9ivCWfbOJPJIeqxoJq51cI3rOih4oMl
	 X/J+3MykiDyLD8VOd4OuQCRRRkdtVQ2+4JcFm+LV0PeQkmG+9nSOXJpORdNE1duqUZ
	 ZqS9AHZfyKCtweGC7nvAy5VlEYkT99J2ODlHd/Jav3Llr7Y/pCAzXgeskW/t19II9h
	 h55663hlkugN2j1wjw3kz3+gap/+PCGUvSgdHRiaqkubgFTGJKuj032RdhgXuFlIyi
	 Gru3sTp0j5rXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090EEFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192089358.24524.8186281323893325328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810869830f2c2f39e6957e364d361aa3a81b454397bb616e0ee1fe825efebad1
Date: Tue, 24 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771920893
