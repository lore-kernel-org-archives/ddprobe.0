Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1E42D063C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766469834; cv=none; b=SqUNn8vMP+HUfTGkts68tYbqJKfTrVw93AqG+na4PwO97gkhjqyx9ttRaVVT8MW7y8OF7wPpXY4cjVqpPFgzgE5VT1dDJDNFpUAWBjs2anKzzTJijZz+y9TAf5p490GI+xE0ZZAmUjoyHpRj9PTXNDp3f/oGm7ALAzmZkTlVJ8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766469834; c=relaxed/simple;
	bh=Nk/lKsIWn9x/hbiOe7OIvXezzmSyW73oUFI9MdO61iY=;
	h=To:Subject:From:Message-Id:Date; b=PERz1Mc+SVlOimqEP2jctIzVIoSdB0xs0myZeL3aaCwZYc5Zn8G9Y3RmSpnApD+7nLBG37RaLjGCkYTmhZ8xv+4pjiQtJR+XtRqMWWUhYoJmsoY7yixLHBISbUZh7EDyfsEsUKpOkcVkMaW5K6u4C+MByR7wqXNCEVtmCdcEWlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyCNnp3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyCNnp3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88C8C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766469833;
	bh=Nk/lKsIWn9x/hbiOe7OIvXezzmSyW73oUFI9MdO61iY=;
	h=To:Subject:From:Date:From;
	b=VyCNnp3VO76oLvQF/AfFN+JnIOU8qUdQkNVBqMlgsN8sa48AhS7btzCMNQWfQ9Q+y
	 4Uy8ZIccWdwmsKpNI03rBIxo67bN2lOmKrNl3FxSk2++vjrnHHPK/LuOrsYQlE2YrH
	 wjiV7Ch8sE2J0svORK9fpjlkVqYLq5ATO2U6Jhf70veWmPvRiyIgXCeesRTG2QFAx9
	 ELyvNIgr1GaU2vAHjrVbrpv+RF8MfHxJD5jrW0unD7ijVb0EGVpxlnAf+UGeysWKNK
	 ga2z/GsNwz6y/oAGHILnexAEDRxsbfW0TIIUMjOndQO387Zyqh3BVuPFynOU51kV7z
	 hgCNuxt6YIOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B8E6ADF9
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646983357.2730.8021040232245841524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dda250c926fa29a1b27ec14df249367e1997a58dbe64a401da63262ed2b5854
Date: Tue, 23 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766469833
