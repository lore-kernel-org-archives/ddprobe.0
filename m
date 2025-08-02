Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218901C862F
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754174394; cv=none; b=QGrPW5FL2p2qcAagQHKT+Zs5skiOgejGNcMXDgfgwjuJ7TAfzVu4Iud/caK1qrbA/5Q/7ly+Gf03NqNDL2nA6b4A9OQOzW9PIn4t13qxlFTHn60S0WXk3n694DeBHMldUThuG2J2FDgmSPZWFZVDHlfGsqlKaaBPzjyglmck3bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754174394; c=relaxed/simple;
	bh=imgHFdi6ytamen9WPlIyxnt3lB1qmOtL+RVWXDcK0Y0=;
	h=To:Subject:From:Message-Id:Date; b=P8SS1b4aKLduAObs9Kwe/sBjlyxEWeTGirxTo2XNgzGkQ5gpvlkmNZrvFq7mDVDvYdRvGP5qykHah3y4kTfxzx2ltKKf4L8VzoaqEth5JqooXxK8KfGx0HUcvwKsL85Doj4BFdB9X5WHaB+8hIFm7Gelxdi3ByUqmY6x//QKi7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAdk2Yky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAdk2Yky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B26C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754174393;
	bh=imgHFdi6ytamen9WPlIyxnt3lB1qmOtL+RVWXDcK0Y0=;
	h=To:Subject:From:Date:From;
	b=tAdk2Ykybw+JsfYltERX7fliPTNVZl3Vj4WJYAJT15OJAcJN4BZMBQgbnq6yPCfN0
	 dCUu55gX/VD1exb4I/2OgbMZveCV4FNyOech5IJwCfbFekW2sI0/SV/pSEQHWOt3uP
	 w6IiM6NNrjCr94Fe3Ws/bCrgvz74KP02yq/kLmQV+Lj4x60NsRTI66UnQ1jlc0UGnn
	 es20Ykv0yHEBqsP7G468Lde7nf9ueAAbRUfwf7tTdnQGi+lZmDmtqSgVvhZc9fncxy
	 cLNog2qZH1ZlFmZQnBzr6GGP4dl/9bqCIJvUoePnRlhQGlxBq2/Xb9Hey3k19Ueu9X
	 Z38b3xid709yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C6C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417439358.31487.9988985441875557548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240928046f69fb209673e4e518434120fa9f9c456ac506697ec9c920119adea2
Date: Sat, 02 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754174393
