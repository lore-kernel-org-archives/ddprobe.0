Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4872818A6DB
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743092996; cv=none; b=Whmv+X9ffAba3yaLT5PE6vKOOm/xy53e6Q9TFL3OEsJ7KoK8q1A5PmVRGJbHCCWY1cTSrtCUk6+438airMSCPRbmpV0BbC+OV/VJZzXTuJgGTUkVIaLeFWJVk9aYejTN4O37Xi67BgJM8ItbWmfcSAoGI8AU5ayl/7rHPbyuYtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743092996; c=relaxed/simple;
	bh=h7WAwOA/b0Rs6Fx34/Xf4Y9aIj5FjmNIIbD2dKTz5HA=;
	h=To:Subject:From:Message-Id:Date; b=Kvfe7vi+yr9TpifjaansVFB8yeRWEve+tO6vcZMQb7KNP2LT3BHZ+zGZpIaCEAoIrQrhMXKE7Kvw0MYzxs5VnovnkJkSk/RkuMPAtV20QoCoqMPLFaVGc4CzrOtWMLbD9n9eBMqL0kfVieKgVIyLObFB/feYfp/w+xvwXnRa+DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5F2wS5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5F2wS5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA24FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743092993;
	bh=h7WAwOA/b0Rs6Fx34/Xf4Y9aIj5FjmNIIbD2dKTz5HA=;
	h=To:Subject:From:Date:From;
	b=r5F2wS5k2nkHVvelUd39oDED06aASdEypxHPmabddWFqbJsNA5d7U7j6tVKo3anRM
	 mM1GUPH+ywFMtWOo/9B8LVvGB3a8gGW83VU5f7IaL8DC9AaBp+gghRgFSpZIsur5Fd
	 iJM2ImkzHmQf/rq8jQ6qBkcZY5qDkea8vbNSaayxA/spM7LGTQCmisnHwNr7cI4SxG
	 eHjGppsQ6xl+PSrUTDlsG/SN8d75LV+3+pGiroRthRJvycowDe7ilZDA7wy53OfkKi
	 qU33ziPfkRqj/fvc3DhpgtLJ4Hgh70FqD6cNYSTuLgxUGn48griJFFPsE6Rp8kx2DH
	 eINrxQVtonj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5088C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309299366.2598.9939206278850324414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d39c0c40073fda37787c35a815aac916aa5b744dda15907a097d945f95372dc
Date: Thu, 27 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743092993
