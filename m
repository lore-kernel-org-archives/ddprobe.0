Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657623C5559
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773219894; cv=none; b=hMRZcCOpb3Aqgkaty3WuRW+xPbGin4Q83oQ1ix5EIPwPV4Ejm2sZu2ddg6emDcOioe0lYud2q9uUlVFJ8scZgj35dqy6w4sX4ko0wSKjm5kGVTQKNEAaMe+rqh4NDLVfifkhDnomzr/skMiN0XDNMwFVUG2qoel62KTaT+xD7i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773219894; c=relaxed/simple;
	bh=36XI7o7oDyW8GdAYb370MjSZ8iOnZ4ZkvDMPgRvQw9c=;
	h=To:Subject:From:Message-Id:Date; b=XuYggS0gYrncwKNMGZQeZ+qScItAf34by+qg+nr+aUMZzkQ3UpmtMAiLTTzceCDyVdsDOkQ8wz+3k3Dp30lBfPyd85Y7OF3aFF6VMl0dN460M05YxKUr5LYt/KZLowpnRXyRJhzYEP29Wq9g4q7A4F6TlHrE5FPLg3V51VY/3Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3yPcu74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3yPcu74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0A2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773219893;
	bh=36XI7o7oDyW8GdAYb370MjSZ8iOnZ4ZkvDMPgRvQw9c=;
	h=To:Subject:From:Date:From;
	b=R3yPcu748Z0ozOBe0/N9t8CbJ7RZ5y4KeaOjrW0OVlYEiakmy3uJozSP0Kj2Bpn2X
	 y9Gv/f/BvN2PgKmwmGGgBCXl9MgPexpX8nXnsTYsnBtlg0MP8lRBSbih+HMxMM7jmA
	 zvXPuiLHQ4tVw1tPWKdz5oFT5jxmFLw6Ilxdz9KDCIEyc8y3algLWBxrfnqenZOlSv
	 KSSi7WbF/YhmPpKk7a4AlyTvS0XEfn/yK0xFrJURrjRYMpoIDq9tfHU78exK8pM2Hr
	 8leByTQ8LokmK9qB04zMOmXwuu3N7jvcqZaumKCcpZMWx2G7vIZBm/6J4rFpzQESyp
	 LJJlDqqs4re5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8843FD88DA
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321989374.12451.4603073521656698814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70ac1666180b39e836999e3904675e908468a5a659b8a37e6b13385e626123e
Date: Wed, 11 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773219893
