Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137B32D5940
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769459034; cv=none; b=sQsIismO8z0wtuJfO2/LhLbYjMSbruvK3mIUBjXUJlzKKyik1T2QNrJvl/74o7BFQsKrf9MkN98iqSenPTFu3UXLtjdpnspyz4dj4TJfCKnNhsO7VRBHKUxNgGjGZ91mvtCeUPfup5c9S2HP+ipziul818PtjaGFopWutdVK8cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769459034; c=relaxed/simple;
	bh=/zmT8mmbvm+KARVead8G/3DTg0fD9lkS1gD567CeSY4=;
	h=To:Subject:From:Message-Id:Date; b=ujtmDCy+qE0KRConvjoLgf9U80zxumXJVD+/hHzDZCGJzEtNK4fISVe9Sp6AWXt/qko42GRju7vKgE1pWlTJNqAtyrEju1YeAy4+Gs9QbUUrRBOWJzJdZVZ3igOiJimq7y4Wt4t8CRl8Wl23tQ1/ZUntK2GC2lk37Ov5Lxy4/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv2IqPdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv2IqPdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2682C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769459033;
	bh=/zmT8mmbvm+KARVead8G/3DTg0fD9lkS1gD567CeSY4=;
	h=To:Subject:From:Date:From;
	b=Pv2IqPdJ09w6VOwF3eg4rg2EPP4Kps5W3aymCdxrqhbCXViRNpat4AWERMPi6V5hg
	 L9sXtO40t/Qgh6m5dyTEY+8RKLC2c+Q7iOkDuP01sPIMAvYH/Es9l8EBxuc5wwZGm6
	 rWBuYrybJpugnwUrHBgAgKfPM3uMc+bXpNrx21AIFHqePzEtHS+aex7Vr6UdyREdWK
	 pPmSaanyHXlTPkivUSQKz3OfTAgw6Ov5k2X/2yrCNysV5EBAiyjSbI4KMjy4ozal1Y
	 BDCwLin7B7Ep7gYwBfUUzcLRSx2kyOXPpCI+Vd2CI2t2jgP6lETkk/eJmPEsMRaSWJ
	 fAMHi4Qfew9bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078CD1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945903358.26025.9656639992350742969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7376f54caa4bd30cb0fc83894355c422e6767c8b67edb2a3d6011e3ba2713a6
Date: Mon, 26 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769459033
