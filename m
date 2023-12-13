Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F439469
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfZV9yFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77704C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702439296;
	bh=Ac+4OwEJvNifwqjkbl9X5+N9iRnYufqOMZbgB7GvvZo=;
	h=To:Subject:From:Date:From;
	b=UfZV9yFAZhC/Bk4Z5+6hTGwmC8so1S6xQ6a4HeqMu1CVAt3Foa967qPWDJu+kfF0i
	 6LEhaUfjHoy4SOmEkBBdrdFpafu+QvMBObQvH2Ss/odqJc5Z3TMbXGi5GfalZC292u
	 4IMCSoVZhyZ1tbNkoiIlnfJI9ItXpfaNbQdiR/HrbDZCYG1hQK7CybkJvnsQK1DhJM
	 v+KpyNjzjN1Vr+ZIPjTjA7r9+ckyfTG7WwMXe/tLDMf4GVYGtrBtyFsbDnLiRNDUn6
	 9oca79aQITbe28VRaFdoVlhY87lSJu+ZKv3bwmdKEIkq1VPFSAXV41b3HQpUsxwT46
	 v2vyJthcrzvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D234C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170243929637.4586.2767367197102869272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b0774478f28aee1f06dedf86aacd430eb96682c25e0bf9051c2a428fae1ce9
Date: Wed, 13 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702439296
