Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A19C29B204
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766556834; cv=none; b=bfxXKZfVXFWwDS6TXHDggUsGVLw6rym/W6E092S8GRbSiPYJJ1XVl9eOPOlnR5pzIeIckVaWNy/aR18+XkUlJJFVsZaiMpc6kMHKjK5XZ6GEWBkoFOs0GMO5DN4/OeEkx+0LwWTFe5goNRsvj743RM/gDO5DxhJPbIJ/RkgoWzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766556834; c=relaxed/simple;
	bh=fXHKiebj2N5Q5wxeUfyglLtWZeFZkMJyagcwurQsnbg=;
	h=To:Subject:From:Message-Id:Date; b=AV1TElZEcgoD1h0wSCOV4tJFAR9TVa81dQR3cx28GpBMCv3ltIf0cHYPV1NG3ukRN9NptA2/13tWA+3AjVkPOurcV2R2PDmYyrsscX8Fvpj5kRo2z/E9hHcbra2qffyw/201BHmLn3+XncillPLF05R7YN5DxfJ4FWYmT+yKWcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc57DGR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc57DGR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F914C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766556833;
	bh=fXHKiebj2N5Q5wxeUfyglLtWZeFZkMJyagcwurQsnbg=;
	h=To:Subject:From:Date:From;
	b=Tc57DGR0+cqsrnwsEq4+buVQLg1vhBaAx8g1FhcxaiPKpFg9Wta+3stxO5Xj03xOA
	 MxBY0YSf0IHzooLQvur5KjL98bmSesZmpmMHXHn1Fsl9UnXbwkH5HYig3zu3+30tlj
	 VVvIousCAnnlAuIzO9B6Z7SzNa8ynm4R/1L9chg+leZ6ojcoY69MCGNvzqSnYQvFHt
	 f5S4gNpGhbTLbtVAuEJplVGz9sO0woCE1NkrpjWg45YyH39fPRYZbC1/AchbURzvSI
	 bfqg8nuBwRRQb6O0x/3OSORWBjZozyDo4jv5Sv76/Puks/Mc7nf1qXAeFa0TfgrOTt
	 Blh/Km0B0WrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE61E7491C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655683357.26638.6854357990413557855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531090930090ffc79145da88cbb1a5f085e5ee53859ae615c5f7b1c7c21b0817
Date: Wed, 24 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766556833
