Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F2C22156A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748467794; cv=none; b=WkfrHOSnwDjZ8yYsZc3oimNnVNJnxUdmhkecScF8JLq8fqOD2S/9QMieS3T7Ws34ST98TH6QwM2D8iFK4WlEFMGnla7mRWALxa6NQ9c9qgpnzhDIuq/quBC4SOjuCMfuBKWQ2NLqQO44VLbCaUarCvxEOJqOm2ZHmc6X/3oUlJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748467794; c=relaxed/simple;
	bh=3FOx2el3NQEXaJQ9KWHXQ+q63pCSJXjTc/wyX5hBYg4=;
	h=To:Subject:From:Message-Id:Date; b=ndzPkvUmWhZC6Q4WCxjLwO1b9MlzbZ4EaLygcNcgycEnmq0wTcOPwtNpVAkrGVrO5NNd/IC51JUMfGhFjkDy6rQvCvX2b19sFZU4RB4ux4h8ccsmNgjx3Na+dHryI/cagmToCLDVbtxtVAGy7weQkV4WUK8HDMjIFRMoSatsEL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qh7JUAAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qh7JUAAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2066C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748467793;
	bh=3FOx2el3NQEXaJQ9KWHXQ+q63pCSJXjTc/wyX5hBYg4=;
	h=To:Subject:From:Date:From;
	b=Qh7JUAAMEKtpcwAACRnp16KaqkiJgCHI4f+nRHEVCI7V/enwOFa0omKPCXqbY/oQK
	 oUlbtrJeoJ1mCDHQAdHb0r8nU4c5uYbizsCNKLQRoLuquJ2f5Vc0FDEpdmOk3l+aMA
	 Lx9DR7G47hlrUqO2ft9mO9p/Gm8VBhTH+niysD7nfgxrQzNeUx+orHYoQ2eWQPCxBi
	 WZmexXT/Oe93CLx12zBs8edzWGv3I8kiby0cya6HYWdottPZDBu5/UC0nNMgq+okTZ
	 12/tVUCvwrlDv7PLO1A01r4YPKI94GIfkc2+1xl0wTI9VjOV/Kf+hrP5B4IqHOAkJd
	 noxMamzwLDNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF01C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846779357.18876.16926404106567750916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb98f478ec8aa05a66b28f516923c348fe9619f349ff04f2183892ecd62c10c
Date: Wed, 28 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748467793
