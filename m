Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D778C9C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751815795; cv=none; b=rpAp5YQosYN1RmYy/NfjitT39AYGvdgN0uRfmzJgu35RJnDJ8AUHDHRa+RmRZ0Ei4Ri8L/6zDUf5+ovCftxDy4yPTkFpbZtC5Sbb3/RcQeJ3bzLjz1eTsGA0Ymi9mNqxC4Ro4cB3Zt3O1b0mHw+Rp+XgzS0r7RGk4ylgvVxq3kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751815795; c=relaxed/simple;
	bh=wgoknMy0hTHWZXAaWp7wBiq31C0JA8RsAd2WPPn1giA=;
	h=To:Subject:From:Message-Id:Date; b=fOSb73dxGUxSXZyhRpjtbbjnZBoO28/IbHfdgchS44pfYlYKBD9PlA1YnkTD2rcpSsGL4AfdwGQCeefWNgu3ykyWm/wh5tSdgBc4j5R/QhzlGNwbC46k+advbZ413UtQG9zGAZ1uk4h708GuTBb0UjFGKeOXYE3rud4fdzRhi1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2bfmjUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2bfmjUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD9C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751815793;
	bh=wgoknMy0hTHWZXAaWp7wBiq31C0JA8RsAd2WPPn1giA=;
	h=To:Subject:From:Date:From;
	b=h2bfmjUournfS89PUO+OFu3JBJrawJYomdxqHN7D3cKWFTcVnsANJTAWHHYbP3Nqe
	 QHc5UKd+j1D2I6yj3vWio/oRNPWBwIjHUnBFWX8Aei7SNwLA+LGVsD0FtLQjDMY35x
	 LM9I+veNUwjURa3jZfjviu6TxQVYAYSWMRme+AICQD5fSfgXVp9K+Eom0ukd3002SA
	 Edilq836fUEcop2rihQjUvv7uccfUEX+pwk8a2biLLUjSaVoO+nyaHtvU2jzwNCE4h
	 9oQKPDUJmVYesyETPJiSrhFtpohXtpKN6VIcAeIcFs3l4VMoWKyaClcFppicaLC5sq
	 A4jbO+0iqA2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB18C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181579357.20781.13857797664788109975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08c08763cd96450d64d697b82f15260f8892234f9665954547df42366c12851
Date: Sun, 06 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751815793
