Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125C426E6F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764448374; cv=none; b=SyHqVNujrOBIbkaU3E3atfpmL7BYQ1OdrMmBnLB311vjaNIq+t+AavjvR6JvRgQRLFeUvPz4W0W2yKlbqBeWu/b9ZxABpgj7XnOiAq7P1LADfJGZlwbzF3/eFazP+2fi4i8GXPA02/6uP4sgQ//znsByE2g+TrtGcz7rK1ni2vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764448374; c=relaxed/simple;
	bh=ZyMfY8G+j9feWE9zACI0h6haVP+/IeRee4VD+LWK6VQ=;
	h=To:Subject:From:Message-Id:Date; b=klkHj/KC6sSs1ua2EVjCkskNHighPnC0iDWCJxedXYvsjM1L/b9tGbWcAF8Ge4p8Kt9ssn3AqltrVBsrKVQfxTbGsB1MrnO2MZcLEwC12ygZcqGcwA/73Q4x1zQAvPbIK3aXwkJS9ACsHZ8QHUHYY8tfBonCtN6/bu3+e0Mt3e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU6Dfs70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU6Dfs70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C4FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764448373;
	bh=ZyMfY8G+j9feWE9zACI0h6haVP+/IeRee4VD+LWK6VQ=;
	h=To:Subject:From:Date:From;
	b=LU6Dfs70q1yY76nFI8QL+qDm9ywgPmbPc8kCqwWFBe18pUGSamYoTWqYDyR+sjZRB
	 d2rFJZEbR7fL6ZnrDWXRl0gR4psNnfn6GiVbkGSjf+5Gf76uVduQrDcZTgUrnAJgxx
	 uYbUz6dlqz8+5i+2megRZoq2vCV56h9iiWM546V7OpZ9WbsGNeQXGxnPcgtcMvVudx
	 bytppH8Fwmri16fxBesW6KhRATqYThVPyMcTNsKusOSbCWww5cZcOS0b6LmrWBQzAL
	 DiMNorXInuKZXc/AbD9AFT2RXZm2cenloidbFZZehWy2fzIjXVpEXOLNj1nyTC9OVf
	 yUm/IULK766PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BFD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444837359.20750.17031798672027681920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a222300ed26471a3bdfd836e64e96f16370dff57ebb5e67708a29cde6a005be0
Date: Sat, 29 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764448373
