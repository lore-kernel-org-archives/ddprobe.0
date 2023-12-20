Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A2348CC9
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwaK8fVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1EAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703104696;
	bh=S1tt3XdNznqzqAmLi3Ronog4rqIZFXqA923D6RG04+w=;
	h=To:Subject:From:Date:From;
	b=jwaK8fVONoTn4YWMrmVYPtVjCi3+X6a1MybfoJ68TSj7BLZSkbDsL50Po8l3kgAiC
	 NbNflQL+u7gCRt9ie+wWMGuGa0IWEY240Hy5GdDkFVSIINyNle33zc2zMH91viJnGS
	 PpyifeNXt6MEFHv08ITIVGeucA7vsaP+TEfeWVDn4pVgXN9cm4+Dp73d1iTVerXyO0
	 zynWY9JfVKMFaEPK86HdHJUja7imUDFZ5ox+chd0IbXVrMf/DDOq58KXh8lT3V2G36
	 KfH+lY9vXOOrmtrAfge2sy5pZ3EcKAMbEjrvDSHAVEUrH4C34Iz1eMzVB2Q0wCEO9t
	 rIyLMErF16p0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDB8C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170310469638.1974.12288195954163703259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0074afaf33be6d861195dfe8cc555eb0932eacb82d94224e66b79b257d6f74c
Date: Wed, 20 Dec 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703104696
