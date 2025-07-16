Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A6B10A1E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752647994; cv=none; b=N/4Ls39faullvIVFVBS3CAIm6VLyZZxh9dHvi/jAuQE/C0r/VwZ/E6m14MkUsxKvax3KxshleuxT9MEXPDWCBxTc+5TBxHZ3Ae2t0sfyrWl3jddirxiGnM6OoNMSKpm92bxOIsVq8pe+WSaQ2gXylMph5RHP1j4u6iN72fVgVDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752647994; c=relaxed/simple;
	bh=kPyHUeyQRYPw5YSMfGtqvzEHb7pVt5KXUBinxj9oubU=;
	h=To:Subject:From:Message-Id:Date; b=RZCUg2vdj9l7sM3xbxtvSBr7Iq4I/ijHCXRagTQWb7bRVNNJWNqLY3aOobe6kl+jMhyollOhlpSmaluNf0nkZeabrSGpwkoebhZNI0lPB0BLlio1zn691+xoP4M7fYdwEB5O4lvwVK/Aowa9dCnL+2x/Y5BzUO5n8eLjG4WZ6GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gjh41fKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gjh41fKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E10CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752647993;
	bh=kPyHUeyQRYPw5YSMfGtqvzEHb7pVt5KXUBinxj9oubU=;
	h=To:Subject:From:Date:From;
	b=Gjh41fKApNS2YqlWiu5S2TI3cwuJzmpvY9g015zVq4qU9JdHYsxUD2gxBL6PEokQ7
	 IjhXEVK+wFfrWmTmfvNv1DpTjZqJaB0NaXo9G8IXeGP42cMl0aw5yAa4KRW4xQzapz
	 CgNLz0x0yFj+twO9miDabWC4oBQrPZCt0a9qDHurtjCls5sTx5znuel5h+UIB7I+/l
	 0xWth1ye6WImoPVc6X9ZrFoycjOVGf2P9Rey6BUirQmnU57W7QDz1nza0jPyW9TYnC
	 jrTGPy8wg1B6WsYSwSWT+fnDE+AxcKzw26SBpCrmAqSVeNOIvRnUTYVAdbpXWQ32d4
	 kjOqcrlf1OSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F757C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264799358.12171.10558011111188067522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d13beabdb622b71ebd9aea768cd5beb0f41325b0077b6afe8813b48650becb
Date: Wed, 16 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752647993
