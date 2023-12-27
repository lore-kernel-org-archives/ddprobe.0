Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC263AD
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRNb2T2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90765C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703666896;
	bh=QSSn2Z/3dHg9ASmy4QrNP0OLupP1/+IGD6MXP7MtUU4=;
	h=To:Subject:From:Date:From;
	b=uRNb2T2i7rOaZKyJDBRbmhfxP15yenwwTfH00h8tVxrpqe3Fbm7fjtluEXbQKAsUo
	 m979vwXE31eaBnF4oE6ZFpCH60xhRPMUa1kZfpI7jhVLk4bUsw0OZM/Et3gG1IK9NB
	 rHz5r7gcYSYybMOUenYJjd86VnphqEWmUJmdjmvcJeWYfJqoiebQ56ol8p5+QIqfXd
	 1/Z7Tm2efMnGzKBwzj9+jEX5etOkHHOs9aHFeiIAcqUKhCAmxKWJYhDZaZ9rFbnrHv
	 TRpMaqwisuF0/0OSKH2KtSViglv/aclCjr9VRs4hPlWrza7yN0pZ6lmJcH1c6tfj1E
	 N5XheaMozPZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE31C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170366689644.16919.12092711511368917463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d9a5dabeef84362d6f82be5b6e4601ef439805550414a6a75d8fc7d099e917
Date: Wed, 27 Dec 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703666896
