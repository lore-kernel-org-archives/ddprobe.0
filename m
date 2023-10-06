Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764173233
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 05:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWWspoum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB58C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696570628;
	bh=Qn2Q75u2h+ba9HidBDEzZ1KlGRXRO0ET/pYURiTvhIo=;
	h=To:Subject:From:Date:From;
	b=ZWWspoumDpBejjZuDDLsYPlCHT6VH5QiYUh9vCUOwv1LdXxVLZP0NHztzg5rqMbmT
	 MPBErsUHgQtK1LwHK2Lz0SJr/d9wgH1RKalV0YjCr2uBrYRDMoKKS6GBPiirQURG71
	 iePJM7FFFF994DHUhPzUTQDjTKLh2K1N8cq7s21DU89tXHgjOQO9c4COdsb+aX434Z
	 SMGSEzj2TxWP1OsUA5twWD94eDVLM2i6bBIMPMARgJNrdQgHjyM3MgLI5esS1fcVMV
	 1/4vKQGOdplIW1UZ6B40HkzkhlGDmtQuZao6ycAP7z3Mr+RPxlNVmTSHx6D4daj9X5
	 pJPjpVzg+GifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B5E92FE4
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169657062871.16743.505214479289272217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78ef0f1fb0d87d1454caa821ea0a5bc79c5877e6fd2c4af4ab04bcd5ca71d33
Date: Fri, 06 Oct 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696570628
