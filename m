Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D222D9EB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755806394; cv=none; b=iJf0FjhPGk0aBr8lHMua4AizbcP92GKpIQCQdtiikxRZOPcyD2wwZJfperLh3zdE+4NRYsRZNVVRqd3mF/0MT7zal3BccR7PwiLZjqhBgNUlm6Cz0JtjcIF14gKIMotInp7nPCBdljo+qp/Oh0G6qDxwzr9zypzX3AQ/6cW6dFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755806394; c=relaxed/simple;
	bh=s/UD1Ij7l6J+Yx9iy0skqobIj8LMMIBE2PGPdRSgXm4=;
	h=To:Subject:From:Message-Id:Date; b=GsmBJg+hV6wXv++ce4QQc1BnxdPmfQA8cXKuPafJhDS2p4AcOBZVoMGd62D5AhftfauQVVHvJdqNd6VB/RBlX5uUFI/S7alkFeY3ogHzxh1YM0UXlG2Vn1zef5xaMX60eH6US5w9cXUFsFcfhqa9i3kgyvtzunedkErQd2Hnhys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLyptKRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLyptKRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2161C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755806393;
	bh=s/UD1Ij7l6J+Yx9iy0skqobIj8LMMIBE2PGPdRSgXm4=;
	h=To:Subject:From:Date:From;
	b=eLyptKRKy9tKvVwN0ZeUdDecfLIuNWmH6ebeJXS/jYKHFHtINlwtoWMh9FWHzp+p1
	 8XQotVCWj1ar4De3epwJIIcKqAndG+562UaBdETShooWYqgRRH3oqiHQTcTKPwmn6z
	 UhAvuYKkisFzzgbRR/s6Bkfob5JIdn8cQyhjw8q45Yr6ZN1XV8j64szpAbEx7acEKv
	 FAYVC5PrhME/cV8US/pCXlPwC7ZbFLaFpmILwoXYQv5qC6dD/3vB/fJ05sNJwsP3h8
	 2qGkfusXxXRfC/JhVScy1hMTPLxUlJMq89eSFRNWFdY/i8lRiRP2RVg1OWFDj4DSK/
	 a8WLHDkj/h3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFACA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580639358.20911.5762932306960493885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87357a5766d5f3a3fcfb26a0927ab4f4335aa01c48bbb2dfe539dc3118552808
Date: Thu, 21 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755806393
