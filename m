Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB9E16B386
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718656703; cv=none; b=m0KjaqJSW914BeXWV6wIzck3jSYH6c9gvBWvmXxO7Wch+O24JvYaNf1kFD5KpBtFRfA3WPgy2mRNmlyRq978o6JQ98ojtJWu7EdzM2SvpYUD4jczfvFzuuU28QVkYxBUhaRASg0JHufbTMhnfTgTpkw2QYLvBHHfJ/cnPQ4gk+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718656703; c=relaxed/simple;
	bh=156v3u5KBiWCv2+lgqGmCv9FgfLjBjTQjF4fiHFlqNQ=;
	h=To:Subject:From:Message-Id:Date; b=FWDg6WwbJOgEjA+N3tPPCk565J1g3zXw62rEjlwIf7FuMmLGUb4fWVqDrZYzyCGQQrL/OrMtve/6zlXa+ndUoTw+/TXmo6ATjKP/pYJuUTskeSUDF0qRdPiRfRIaRN+c0/DhSnO1jfylPE6uPbIMv1kAIoSUugwvOgcueYt3kW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4RJWxfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4RJWxfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71C0C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718656702;
	bh=156v3u5KBiWCv2+lgqGmCv9FgfLjBjTQjF4fiHFlqNQ=;
	h=To:Subject:From:Date:From;
	b=D4RJWxfxXyr3erYWDrwx4d2Bl055G2hUUdz0kzfXDy9fnj0UUezC7WPO41zgWeYuV
	 03jFp17gy59HDeHTD2Pfv7d04lFHk+nDN5DU7l3IJdVAkAdwZgu4PXIEu9qA3SaX/4
	 bi1TMiPr+mfhgw90jUDwSEX08+k88MJ6bUpz0CYS2OWZnfQ6we7MCzceRIVtCl8Xlv
	 1JoJvS3AJIo1XyAEJcCb5MPuY0uV7zcMdWsV6jqs9qGDVzSQ1zSBFuvYUeC1Yz46Ee
	 23IAS80Z90yZ+6LspRmFxGhks4NrxLNTdev+AO0OOV5xS9DfwyOpumzPGHblLcou1U
	 uPq4nfyiR7gNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3912C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865670284.22560.17998392068120217360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f27835ae6aab59796b4c272c3860344950671c70a4f7d8618f42f862554592
Date: Mon, 17 Jun 2024 20:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718656702
