Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6DD3403F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780293874; cv=none; b=d0ZA2xD6cSBNWgso/3Hc6ggYUIsJDIjl2oiMTMEMLIoViJVYWiNN1wqxtC2Nxj1F1rXlIMhftkUmK19F1VgXxtiYTm4FNWcY6a+L0u87/aVVPRK36Mxlz8Bim7u5ilXkYHI5Vznwzw4aR71CNXbgXLV7iIOxO0HsT+BOdzz0Tgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780293874; c=relaxed/simple;
	bh=dBTg0Zr+K8WW0viHPNhbPZcJDDRGc98tAr5+VuzKQGE=;
	h=To:Subject:From:Message-Id:Date; b=qYH92xXi3eVE5sX4kw6GGdZtfi8bPhdzi6ZwP+cisdK5ukJ5k9N0iyqXp/B8MEG+6M+rLcW47xrtFDmWaoMehfOrshiwY4gfo6NIBtyOOmdL8fTSxdNqkKReZ0xx7nu8T64smxRC+/yCOzGJgMQkLUzT2lRTEc/KQ3P+jYe3oq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngHcnaga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngHcnaga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2221C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780293873;
	bh=dBTg0Zr+K8WW0viHPNhbPZcJDDRGc98tAr5+VuzKQGE=;
	h=To:Subject:From:Date:From;
	b=ngHcnagavwh6/bGvSY8NYSkWd1nh+jHAizy8/XgkDt4qNezVKH0pui7hh3xrf1w9z
	 RrOuekpaTaiBgA8XBNoiGS/wG2glAuRVzIVjGn6JAJ5Jmo+RPLc6jPp5uTfE4KcV8s
	 MbcCSaiV1F5PGEQnhI6ozTuie7lY57agYNb6Dn3szSQIjDNxLcSriOMfH8dpscXfnr
	 JlkqVu8umnG6lP/wKP8PYQJ3nOb37O1VP0iFUKdNL7jLBLjG02PF/KuQEYlNEBEpyK
	 gnprxz5qLq/n6h13W5zN69+revlSXA61gauhQwOgp7QupTUGSKS6XZ6H2HqWH22zRh
	 TWBS082nhJ92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F15CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029387369.16714.2913949983231202496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761f96636235e817dc061dd47244440368ffd2fc54f9d6af0625a31f45b924f8
Date: Mon, 01 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780293873
