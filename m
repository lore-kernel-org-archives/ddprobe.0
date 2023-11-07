Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF738B
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUdgAc3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8162BC433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699331896;
	bh=2dXWPa++269D63yNkMNywCg77FO0055SOnQ9UXP9JFE=;
	h=To:Subject:From:Date:From;
	b=MUdgAc3NrFes3y0Yr9EWpfpTsSYyXVifRbxb1M/ECfe5maKWzjJTLYvm430+OLtyV
	 Vigs7S/gUK/yTVC0dHAIp5wULOmDz7nHibP+lz+FEpGKOiTjjrBVAIA6OIQY/2d2MW
	 XJ2+8JjAXo9ft0jEaWzIqt3l3ua0UNQnlnZA58WHXlZBQvWc0lsBHXS0abNBNQwcFd
	 CSh95jbAji+oEkjRNK+iyVzaGkeouyj2ccET6j/DOKVGVIAWujYPhyXqOJwC38xJWA
	 TIJvnbxmgY79N1C0U0hSsnMpuBbX+xeSbm4I1XVldcK9l69W5oGtzZ8QXXWs0Hcbik
	 TU3CjZBG0KIjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640F4C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169933189640.26662.1677937207879120033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9fc385bd660b60e6c2c8e4238c8f4d70cb0f63b473ee07165e167cd16cc736
Date: Tue, 07 Nov 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699331896
