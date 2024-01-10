Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2164C3B9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrhFM/ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81960C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704906496;
	bh=9Em7Vr3GLqe3hPWiGaPfsjRlCO/nE7ZakZTiDaz5Jdw=;
	h=To:Subject:From:Date:From;
	b=BrhFM/oukYGIFXnn0xvDxc8DAKgP6zLs7nNpJanHn/nP961g5A7MqhcfaRZ77rV6T
	 pPUQZyKDSUPwE9ZjUaj0vU3sQ6txeDbo+RA48K12ubvD5WEBhKP78UGRS3WidwzTP1
	 fXFlpzO4W0+BOkaw+jAtCqNXFl1x3bHM2p5Eu4OqNa0VUmxcHiwoN+OvTnTMJTm87u
	 6CB5fk5tICUn5cKWldYSKhKePv9knxucnFNnQTWFu0uEmXrzRSGzpjpDjAMcwA07Hj
	 FzgjgIfTLE9HijWqJr84itahFxbawpHTr6/VmYEUFambxjdxzpmxVSVGH/Q/ZOMMd1
	 OjZsoH9dKU+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6299BC4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170490649639.5325.6294105484687970273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bb65b78316bb222903c4000195e15fda0265cbe38ff311cf4e78194ec3b84d
Date: Wed, 10 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704906496
