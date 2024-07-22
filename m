Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1431F171AF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721628954; cv=none; b=jyydcL8CoLNB++OH8AbIpzeN3ljO0j6Di9nft1cHUUROAi9n6rk6sVqfZqom5LkWqEQ8K8A6BH726rCKhb6UrFWA9+N8+QHLEpTlDH8AwPjySgUm3I6rezXC4S1SzmeBzirtGc21AQNs2rDZVrZjLFu4ZhsrmfA1bzfgatkF5g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721628954; c=relaxed/simple;
	bh=uqE08dohO3gpWAKRT9R41yMm3WN+mIMHjRn3Dbuks4w=;
	h=To:Subject:From:Message-Id:Date; b=aI3QHT2HIDHC7zc1i0I/Ikez+s4IoIupHPGTjE1XDmHJ90yMGAkdoMPGB/3pPtEjMp9ZdlIGASUDJ3BnRzQ2bQARktBfBcyZ8O/vhg590J46tMhCPTIfwJvG8OpQIfc3gb+BsfJbsrt3THOW0VkPZkCOQdOgQPP4db8cQbT+2RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VER0s6Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VER0s6Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C9C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721628953;
	bh=uqE08dohO3gpWAKRT9R41yMm3WN+mIMHjRn3Dbuks4w=;
	h=To:Subject:From:Date:From;
	b=VER0s6Fs1ismGeagh4Hbs4mXMnTMaIi2/qbFCN+2/edNf1s8H2QKAiQh+02MlMHQU
	 THea8XxWET9/y8uZud3y65p8kG1tg8De0R+sxPld/VTVYJyC6UnOQLP1yXvVgUhd6y
	 KLNKZl+dHpy3EBpPeVzhrbfoOjOTKXQ2Ug5Lz73klbXAJKkelRMS1OrEJ6Gzj+pV4W
	 tDKKtKI4pjwSC09KJ7KgQApZC3BEfax7Y09D5VOGuvEFGMwyy5HY9xza9K3QDCmELj
	 aGa3mIkgBoXCJy52ScPTaxB5t05nclHY2Fn6+lDT8RAaxuB5op2c932qqPCsizHQDA
	 LFtRxuA5lzCPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E0C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162895360.994.8075716513907828551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2cb83b7192da86eb252931d1101fd01461c476d3b61777a427636d42f70157
Date: Mon, 22 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721628953
