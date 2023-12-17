Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4EF44C65
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIXeLVlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C62C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702823896;
	bh=LJ7VWEDZSk+ZbgpvNuEaRc9ymOUT3wJOgXdAhS/HDP8=;
	h=To:Subject:From:Date:From;
	b=VIXeLVlKD/w+NJ83ydhrRZBaZFS7zsVM6XNizUD/Qjx8GKyCOvoAf1XVYvPhsHNhe
	 1pbLKq/IgtjB2hXwPV5qYbGBfBOO+vNEZluF04TQjnWK1hyILbfArRNhRNLLUjXQax
	 513DTDPzno3W3GmgGIJrvu6xW4zNv+duDwRNYdm49/CiMFQxhqzSjXFBJHU1RL6gi3
	 lf4KYjpdgeWRoOnZJBMaKBZkvKHhUEEM0Xkh/JwHABDrepsAFKFZ9d0fy+TSlp3dDk
	 H88ViATnouFijlQuIOMrLIuXpY/H3RZuFLoEoG4sNFfDjC240ZUW4BGDZhL28KS8y4
	 Sp8wNaz0OmGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A317C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170282389640.6177.16854802138603167945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd77d59a4812a5edc801fc871d85da536aecbb327123daae9bf6e94dee4b735
Date: Sun, 17 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702823896
