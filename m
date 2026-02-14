Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57F224A07C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771040693; cv=none; b=GUqxQCcIrKkU2wF741JBY/0tMbxOWefiiXV9DFyfwFXJ0hWCtUpsJJ09U0o52eOuQhEPhcH74cu5a1w/mEkvcW+0DRY/ueyi9/Zh3dJ8A6oVMvhphW9RUcDjJA+dXiQfCwlwp8rW9X2O2y31LzMmBynWYGWaEr9ZSydtr67CxqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771040693; c=relaxed/simple;
	bh=x1ITrvhJB/1tvyyGqCJ7X46tZTDXYX2ASnR4ksbIKxo=;
	h=To:Subject:From:Message-Id:Date; b=Hr5V2oJT82Hfz86mGJKIH9J+ZU+WSDkMMvGrGxk9Xb8EK+Op79AoZfyqW+KlsclRtI8YTKbBRONALdVSdtVws4kvVPgFOgWWZl+S245RtOCIL7swvtdHz3CeVYibehI4SBlYw37RpsYH6llTUynWtVuD8GWoBpd91MY5qUI7iyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUs+UGc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUs+UGc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9144C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771040693;
	bh=x1ITrvhJB/1tvyyGqCJ7X46tZTDXYX2ASnR4ksbIKxo=;
	h=To:Subject:From:Date:From;
	b=NUs+UGc3K0pxwq2Z0azyv6OXrpVcwERopVpOD7fR60K8z8rI0n5xI3zf1/lz5jSSz
	 7f0Nd/qg4gmJKUcIJs1AiynEyodgt4JM2ZowUz555RHCkMvF3LBc9oOgMPmgePyOQy
	 6Ku/Af93KR2j5oc5J6ir9UWEV6uNtcPoH0RE8rSZ/og65j7mf7wsgXdmkZZTwW+Dkf
	 e45s7aTq96knSoUz/VtKQsVPj/DfBN/L5eZOeLi/ypgbtJTIj4c3vMISxhGGs7O1xG
	 HxPASb9tWq/0vy2cANTLPjqHfKJwgsnMHTnXhRWVpHO72LmDMoF+mHKeipFIxs6Noi
	 cYqz7Mp0xG46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32B7EF99FA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104069364.27241.9668353174090306781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09baaec17ac18ad99169a6bc91ea89211a97215c318037f9fcae413303e92390
Date: Sat, 14 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771040693
