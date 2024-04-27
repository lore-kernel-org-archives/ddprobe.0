Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58582145FEA
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714254743; cv=none; b=p665Wa8hc81l/RuEd7544sT82/viXEGbi5phup28MohaLSsJt84g5X9AvNtHfOrETL3Zk2IB7MFh7SIl37Uy7gZ2DKV2S2jXaevF1RdpKlIstYuYKABqfDrxDTf9eukBdQMiBC4L4abL9cIe0DJ/gK6Ym9AvXkB+K80IPSfz8Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714254743; c=relaxed/simple;
	bh=RXxUFKnpaY1eZOSHFiEK1Y211mK7BHOlt7yGiOXBysI=;
	h=To:Subject:From:Message-Id:Date; b=goBqGkkXmO6NoqMQ7efzJ7LZs6Q5z3bC6ydmtTKAV8Smsr+aLTfW5FP2SYS9XNxMRGd2bKQjJbMdVqwXaVdbbO/tvjzWZQndL23nHqhifiIbyANYgSSrdgEwK6CidIl6YKuFXnBUWQivv7U/xyNc8ajDmo61/OT/LacB1wsUeOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxXjvW5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxXjvW5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3769C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714254742;
	bh=RXxUFKnpaY1eZOSHFiEK1Y211mK7BHOlt7yGiOXBysI=;
	h=To:Subject:From:Date:From;
	b=WxXjvW5xFWGuR/3fEBuIkvLJYIi/eoqLcc2IRsszmprfGG5HDQTvUw2fat8wETOVs
	 SKCkILzIl2pbMjP4JqwWCdHviBIroZkFVOQe3L3hpI4blltAAlGJO6Fj3vpMwzblNd
	 nctSnaSqLnsHu12GG5gJ8nwetfNolwIawpDC1EEeA1dHh8p8JwUPtTAxK1q3A61Hyy
	 +s2Pc980gqtNmpmv/No/YtDY2rzzPyiihiS41QARRA8A0yNiA4h0g4UqYZFzVQgcnJ
	 IQ3qVIOVHs/tu5I7B96t29yZxgFgSsi0Q6hvWlGUZ6Z5r5+FQht+TZid7HwfRAkhm6
	 AgoKkdEpnulKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F0FC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425474277.26767.2767139111081731014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a304b33ee19d4519ab1283b9e539d0d732a720ce458b1002f032cf7c58873f33
Date: Sat, 27 Apr 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714254742
