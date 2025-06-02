Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C85B13C8EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748908794; cv=none; b=inHgiH65CH/dMEwPwxPEhoMZdi1Orkj8I9d2AG06defKe4gRyGVLGOxbliGLbx/4st0iZsb0V7EX9z/QF2s+W8BOhTR03MD+CGrbwrJ6ZcrMbOnM7OVGYm98SKKmKbfQSDp005vvGdl56wY/gVsXZbZXH82cOt/YAHaGJctjONc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748908794; c=relaxed/simple;
	bh=J9mpJ0LnIe3djTYV8Wn3Bdlsn5ii74sAhvWw6K5pfrk=;
	h=To:Subject:From:Message-Id:Date; b=MYHKN9qAvbMOz3kHbkp7TsgJFHL590xGiXVVo1gPzL3IaoQguMwxNygaQm1VQrci7HrhTl43rA0fwBm8K0W87YbUDzApLjG9tSEQXrxhb9rS9DIwBWUtjSTKwU5RVVIpM43zbzBOIYBYddgFWuvNwxuQ6Cxkx6DZ8O6+A5OvH1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwC13iRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwC13iRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE04DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748908793;
	bh=J9mpJ0LnIe3djTYV8Wn3Bdlsn5ii74sAhvWw6K5pfrk=;
	h=To:Subject:From:Date:From;
	b=IwC13iRBbd0fQtnM4oKwx4fXuKSXcPN1lXXL5siMu/h4XzjvZX76uNSvZqKWLSj7q
	 YSKog4plzpnH9B+RTWcMnRcFLdty3XfgaW1FzWyH91gqfMcBA6I0JiaLI3t0nOuerV
	 wMy5sHGuhkZMInzlgkoxcfyz/UggAHUdCD6//j+6BycLuJ5LaOV2C7rxumMX/pnM2r
	 xJ/xScCxy4tzr3NP5QTDq4S5ZFDqDwKE6ux3dHiikSOo+jCHXmKVTdzWREFdLXs38L
	 IEBupep16k1mtFrbzxUSLIyqviFpSRIVCGDL9+ADhaI6NG9biSSRge0+QM1LHaVLRb
	 SOtCpq78ac09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AE7C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890879358.4987.10859467768104744107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2aed40e2b6f53b690a6b4d9beee79561b3d1d2acee04d511fe15e8e4e94212
Date: Mon, 02 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748908793
