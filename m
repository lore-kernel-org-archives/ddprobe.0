Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CE538A292
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773941093; cv=none; b=lBXfgy1YZN2WFTuh3Tal3RwbICDwwgt663ObaZ1KiZlphx2LfzRc7pJKvLWRmo58WnmRqCiV3JiMrdygRHl6Toe01o9IyoHcEZfoW3BR/hPwmYFZ7xjec4Yd75PzKKEpzQhgXlPwlqSUD9WiPM5dGswNZ+gegeqD1/P55Qk4cRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773941093; c=relaxed/simple;
	bh=NuoenOFZG3XlikKzsdcoBL4ZFkgNEh+XXFb4p+bwono=;
	h=To:Subject:From:Message-Id:Date; b=m1uMVVKjoLpzaABXC5w3B1Siq58AM2Vq82iMCl+IFlBRL5cveoiYbvLDvGABnsyD+SOP4kPk6jNdpZ53mCeIzhaHGh8hkjAVJYZESY9qG1KLZ8CbhI7czGg9UEb9Ub9F+C2lZLQ/8r8Dz5uC5vxSb2wiaI7vh3JZVBC7UVNzT/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9T+SNN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9T+SNN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6C6C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773941093;
	bh=NuoenOFZG3XlikKzsdcoBL4ZFkgNEh+XXFb4p+bwono=;
	h=To:Subject:From:Date:From;
	b=m9T+SNN6FnyqrA/qD0LYYz13jTGOn94gyg0ZXQKv7qbLgkk/cfbsT9tCpH/4IW3Qc
	 omcE8WlWqC1237BiSqd1R+jfw/tSUFHq3nwNKzDltfvt1OlRIJcA/SRCd/lPam5Kbc
	 XtCxF35gAeScEDO66/ovkg07mUb1SZGRBIZMWrWsvmTMR8uLpNKChKXTUB3CMdjIku
	 qgVStBM+ei0ZwHx1n/LZfcgGxv/UiSKFgXz9OdilN8nWXC1+fz2yPnPEce/0pX/h8r
	 Ew8uKYHPzRVFuWpLcltF9x+aiQAOhBpEWmfDQ+u2cq8PPPGot/LjB2Q9NTQljVgg8P
	 ZW4gWet5wJrYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEE10854D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394109357.27041.11747230653618625839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3ae213547ac040a688fadf8fd75bb1e842948bb51af7cd2a24e211985ee8d1
Date: Thu, 19 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773941093
