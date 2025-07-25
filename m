Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB153594E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753418394; cv=none; b=exK/TWNG7j8tbF5jJGszvz+wfqOacCFv4Gt+hojn7+sWcbE7UFQCwN//D902SyRdJqPMSQH5gB6w41kwsBKHt3wmY8oNqoPHbSmh/FLYefifBuy3PDgFzyrTDpgJw06U8Gn3QgYDQ8L+7HCoQll3biOyH3M8iXmS/MqpdOQM8z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753418394; c=relaxed/simple;
	bh=8lN8fNIwHw/m+6rYdNc9d1Ov3g6nw1o5IO9+e7FNIqU=;
	h=To:Subject:From:Message-Id:Date; b=tIDpslTLWxthdMnvp1VQ4FQ5sZJndHZTcz0GhQGzgUJTIvbBy39J0jKrdtG9qyh863nHYM51E7Na0D93UG4lf8N+V5xewWFKTBFli+py8HCBM+UK7MI8mBLVQqDZjOu8IlxV5EX7q4Yx3xXPYeKq0rw3cSUSLl+dFOTOCsn5rVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umuKHz8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umuKHz8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D64C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753418393;
	bh=8lN8fNIwHw/m+6rYdNc9d1Ov3g6nw1o5IO9+e7FNIqU=;
	h=To:Subject:From:Date:From;
	b=umuKHz8xxvs/xYtk0lR57yrUDiZnhoS942sxmXDQNJ8RrrE1fBABp2+GAhV3i114X
	 oXUY6GlcbFXd2Lb0wIK6QO2JWjKvNNBfBXN6zQB2I4SV0bwqDHG/h6rOzCXKHEu4OB
	 YYL/XvG7YY4L3nMvB/g4QDBlrRskf1mkBnkA62vVCOKVYEnYxGWbUiZevRHqpdcKfy
	 lq8pmAZUxG7FJayTTfICjkHPFThnurWqI7Fr9pYVSeqS9/cLMkUU1RK/pKAngQGF9g
	 yWp1yTtehdaZqlp14S1ClNjOsyXuM1fOYGBmpTk5sMIebGIb10HKKk165da+giUZHx
	 zpwWwaOXBC9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94953C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341839357.2492.2720790706370579926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640f6c9b3a20bc005c52b15749da017328ce3481d1975cb43437bcdcadd3425b
Date: Fri, 25 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753418393
