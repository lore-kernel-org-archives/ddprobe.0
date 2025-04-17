Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C82F189B8C
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744883394; cv=none; b=Qpvb5pir4IcZWdoisA2qfMDPVWqiS46ncj7BXmdONMzCgpsx9PK6YxERG5cWxSyZlX5mMpphmG14UtZ9VlZ8vGQrfl2ki5x48dm5XDHfXKr3SjN1YS/bv3PJddkFIVPZ8ZrCniE2JdgTo43btgz4rS6fR+Cdm0/GUcA6KiTqdzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744883394; c=relaxed/simple;
	bh=73O1Kf93PD8bzLYleusQByRZQtMN2sTW8CUndp0JPBo=;
	h=To:Subject:From:Message-Id:Date; b=CV8LJZDOaZtxL/JwHdjOOeIGmLCYFXIxlBhsfQME7x+5V/F5s1Ix4yDsigz9VrTeDNyODfQWmPCmlVXF8L3RpDX+Ycq1zGoelbNcuX2b54L5vTpEHaMB1OBLIwYWhvL1plHJWK0SL4DuIxKoBLDWPmKuhLVMW8i9Z10sO/O0FmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG8jr4Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG8jr4Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744883393;
	bh=73O1Kf93PD8bzLYleusQByRZQtMN2sTW8CUndp0JPBo=;
	h=To:Subject:From:Date:From;
	b=SG8jr4Fldj9L+StlGV9sLta6UZYLEqOkX4XNso/gy6Qqygo36KAzwGhb9xhpKXsAX
	 3wbFhldmEyEpPfwjLM/Lb7NzUY5WENd4PvHAJ0kfAP9mnlDL0XHHSfZX5qOYXD6G+J
	 E3/kQX/nHiaCb7u5XfFuHkizqj10uoqnJ8RbMm02083IETn2YQH5x298bIrHF3LYtF
	 KsJEwWl4nxOf0IdwXOnVnQ+0naL7/FCz8NWizO6nOMqHzpsjCdxyGzUWKg5+UeX+Lp
	 BxfTSDJERtuSGlthEpoiWdlxx/zx6njZS/dSJVU74fdP7d2anW3RK6iwjXqTTRb0KT
	 XqgGrrGSeX/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90101C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488339358.7017.14314857635192645582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45fecc8ab2e0b6ee5886ae0f681115466bed41bdc934922169ca3357ab3db42
Date: Thu, 17 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744883393
