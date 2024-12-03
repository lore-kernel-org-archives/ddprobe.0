Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193321DD0FF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733226954; cv=none; b=hTyXSIKX/7lgsM2AZ5GrdCWmFCe6x90BQCq2uHEipfMWzgIyzWJjSI3/JcPryqGePkOcYHu/IYFImcv82ev4ljdXTucjRIN//ix7WXbYa4OIb2bAFDy0SFoP+LBX9lQCMXeycfZD+gGsKU5Ba4JdbQvE2MJsp/lME33aO/C9E3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733226954; c=relaxed/simple;
	bh=WqwjfeIYT8kmd1KlWfVaJxdOPrrpOyMenYg5Xnd9cUI=;
	h=To:Subject:From:Message-Id:Date; b=oHTfN5v7HnrfkCSrqjMqdMZ2tGQ+/zW8QfEHaZ53KRsb5e1EbPCJaZSbUvMCohfF4XrRHkQH6fmSamrXEmPah2d4MTKNI8A5jnMyvVCvG+kmLJDDLJHDvESl1xq+HwL2h3ppcCv2YQhI7JU3Rie6lII/SrLwc/cAut4VctT7IEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFMjeiis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFMjeiis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1907C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733226953;
	bh=WqwjfeIYT8kmd1KlWfVaJxdOPrrpOyMenYg5Xnd9cUI=;
	h=To:Subject:From:Date:From;
	b=rFMjeiisPrgfWOLE0SVBOjpcQE+3oJXnS1vB5EiEaVjAe/hsx0mAWeUL2Uf0W61a8
	 gM/Mvi/GocBXxhgKUcN84X4jUJVT3m0HHSB/q1VnbEdHs0fHOavKflh2WQq/XcsJx+
	 mvrqLM8HMQ15x41OdqGn5LZPCmTVeelpUunNrxr4gB1ZN59bFZfvjPDDgZzdL5qpAc
	 btOt25vSJNxAZu9bKfJdwAG8PaMbuC9UXTz2UmSYq4fAbmLdvXn7H0KVRw829SrQnf
	 7cjlSRH7nyJrgyy/OC9kOnJW13dopU1yJ48+N75BRJ0LmonP51oFLsj2h4P/vKU19n
	 jTX7IlCLoXZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAB5E64A80
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322695362.26730.1939889350799215507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e322eeee307c3be29ff87e7598013f56dc3015d43d07db4870b88417da52588b
Date: Tue, 03 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733226953
