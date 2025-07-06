Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B7025CC49
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751808594; cv=none; b=dybBS7ziXYUwinmBmAzHBwy0JxjlsdLVauyLi9UKEF6HhT/84kbl2muJCTD+nxINKYoH9JkhbKE9sZCFWLRWvH+WbMOpRlTX3KNIGkXCDitFSn0UUtPeWKv5gFk2Sg+Q/V0Z6mjtuy9qZu8rcIpUvu4T1d5Ye+Q6rwIbdS7g00A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751808594; c=relaxed/simple;
	bh=XHJLus33cQlDU6qa1pc1TZbXCUCZK5cN6zxKrzbTVZ0=;
	h=To:Subject:From:Message-Id:Date; b=diwCICSWtO1tAeDpOSATf7TKUOgGacLRsgDP7svEL+8qqdMFqGZK+QcTUWjzRx8epkhPIJRs6/cTzL7luDXzICHZH5prb5G5gN3vEtJyPQHP9AYfr0lVhtmMb6ziLP0LT1xHO/Bm2of/W9E+WbLxuXidEwhlLwlsxQodFJy/4YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GM6O0U0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GM6O0U0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7703C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751808593;
	bh=XHJLus33cQlDU6qa1pc1TZbXCUCZK5cN6zxKrzbTVZ0=;
	h=To:Subject:From:Date:From;
	b=GM6O0U0Y8zEQXsFh1mUO68L/Zifq7qaLbpudGakG7rcozkXUv2n5w38Wy94DNB7Pm
	 dV/vmoilgsesM0qpt6xyUb1+8KAtiGom5bx9CQMpxE+XdSm1DOuDpx4wENXzcMTQWk
	 1o2gIlVapZJNsokSE/8jg1dop/YkgLJEaaSg3jttUACuXoZbkwR6g0PzME+xjNcfgO
	 SKSF3Z3/oT//m9f6pXWO4I/4VmIaQdyS+tJH0TyQkViYWq4t9Ds9nOIoanp0kRC/Ay
	 6ViZSq9P8fTib1WPTafOtlD1FnB2CcbrCMEt3r1Yn7qvKNfEpprRuBGdUGdVSdN738
	 ukx+yRcebyJow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95897C83F07
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180859357.9923.7388968299919782392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8427abfc857c82bca55729cd5703c5bf2c932b0d3d971002d250349cb144cc4
Date: Sun, 06 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751808593
