Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311A51D554
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746169195; cv=none; b=nsV9Oa+6G3THiaKYXSrXWjBo+YJbfMXQunOSRBhO+K5hSmiQAabMOZoaA58Vt8kBh0Ctvq7XshPzfDyCwRiOgYChNTO3PFYMUYQK0ddTzy+bEkByaZHGdDaZdR9IaMsYJAD9EpTky0a89BhHOxh4vpbGsk0CCYCK5x8/IrUlGMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746169195; c=relaxed/simple;
	bh=3WkrXFVDuL+QlgnolYN5yREPnvRhCZK9g9/3oeOomU4=;
	h=To:Subject:From:Message-Id:Date; b=GkyUWMwkWHdTWf4uFDsA+YAiQ8+8X3iNnTlSVZuVHYyNN7daL4tuqOsdHq+jWvQwDYPlytMl08XBVggly6cfRMytJaUzzMFkFLh4jmJuY9+cu0tup+gY5joUwi8jrhzNWdMAW3JQ7lIlTYGfiih/DV9Vh4jTUR2UT7gZOmjU/k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn0u8ewc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn0u8ewc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF15C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746169193;
	bh=3WkrXFVDuL+QlgnolYN5yREPnvRhCZK9g9/3oeOomU4=;
	h=To:Subject:From:Date:From;
	b=Nn0u8ewcWpNDB6O7x2MMeFjuW+NXNnS3mIXrSAlAFLfCwFWFVRkAr0dsVgJMRS7Yk
	 v75NNvEWqNNqihQ+f6qc1q7fIOFA3XBObLN9OfOMrM2WVTYtMuadgjBI6FgonwBQgh
	 gH0Kf3deUmk2UR3MBMLFreOTMZ/04ReM2BA+5oiaEZJ7dSbTOzO6DXbzxd6Qmdpd1B
	 yhJcZM0mvlkturKrFnd5epr2Iea3Xa9zVtlWur1JKbp9aShCpa4W+JoX9aB6WQRuD8
	 5EkFCy7Qd6Pns0A17Il7VI8pkLCfBrJcpSFKdRkbHGREbg+fA6Uq9z2bLHPdZj5IUN
	 fIcEzMvoaNC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E674C3ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616919357.31164.10828956226814391025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96784d84765730d84fe5006400dc7e45cc78cb2482ed89697988966c15f24baa
Date: Fri, 02 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746169193
