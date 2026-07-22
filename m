Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3894399DA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784744374; cv=none; b=k8N5Y/a+K3v9dbJv5D3EYMQT8Hl4LvFl1HFCTgIYeuQwQWZ5GOqMYUddNsB2yJwdKWh4H2uD2x9rMbM6kJ2e0HCsLHby96Thj+dWzfu7kuauBhedcgqQbTIdGTX6vKFaOgOPL9h2lq1gOVQ0KRnA8nL24Ngd3ikvos2R5fwvDKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784744374; c=relaxed/simple;
	bh=MVJZJ9qqutuGSMXnOSPUDymtR8b9JKWUV6Ay5pEEdq0=;
	h=To:Subject:From:Message-Id:Date; b=ICFL5x07XRvH+rtL/4YvSf4BVgdwkXETn4p7ozXu2awigvi0h5SXj7cJn51YtA758a07TgPNlodszTA35UnqEwwvOmm04VOyT56J0lrUeH3qWdBq/gzF/layq9PVWY2eE3NDSf2nZzBn6/o+a7a7HD+GPe1iXuxmiixubzJsTBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXddv+PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXddv+PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DC0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784744373;
	bh=MVJZJ9qqutuGSMXnOSPUDymtR8b9JKWUV6Ay5pEEdq0=;
	h=To:Subject:From:Date:From;
	b=qXddv+PCK9EWXMOJ6NX9tKuiK80GnkDBDbpQXAOEbYQjUdU87wAlAoYWm1ceecQ5Y
	 M+PTqGq/XWMXC7w6oikYndWzRYkhm72PPf1arpNsL8Qeqa/EBxjll5GcNY8e8RDRNe
	 EysGsuxVBlZIwMIXRnUDJ35stQV5i9d7dXZkPzSaEhunmbyWFhTEKK2mc1S5r6yc2f
	 oIvec/ViDhMKIBDsGtsGPoqlRvTNCHXz/b1jSlT5ejTixS0y8QGrEa5JjGWb56MtHC
	 kv7xpV25iavmADo0cw6x//a3SkMJNB7m/MzUHpP5IaN9UAbZ8qm9Dbmmewop/NC0Kt
	 IUAFOiZOZXxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2743C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474437372.20272.8299585996303894732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304fbacf6570979b5c26eb53caab80c32737bc7fe74dd3cbf1def719b2834f89
Date: Wed, 22 Jul 2026 18:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784744373
