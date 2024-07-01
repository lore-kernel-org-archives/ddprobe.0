Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765831362
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719804863; cv=none; b=jc9MplcDbcmYlMYu2AWEslHXUMzvFcagYyzOXFZvqOZx0C4JGbhi2LTJ1NOEy3Ey3nrN729mBDTusKuvCTgL3jZLbE/xBSsUyBwHEuTZJoklEBFhf4gES6YXop+JwWR1AmLBnPI/4R61g/+cYW487dA0s9xKYot0PfQJenPEV1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719804863; c=relaxed/simple;
	bh=/U/luXwmFv2E9lA/vHALJD3A+BgcqbrBL3IY3r/JJDU=;
	h=To:Subject:From:Message-Id:Date; b=YWLYO61iUtVohZdVafyfaCRn8/vZ/lmFdUMedAfOVl6zNJ0PwDBDpjrpPsSFwGZRI+JWgW7nCvw0NfPEx1e9kihEoLftmfSgXZI4pKOEydHRTcJ1HNWagNTR44pYPJ8fW8+QEHSIT4QR/fk/sFhHWcDZVM27BDu4Nm6uArTxOo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkxFjd+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkxFjd+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E64C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719804862;
	bh=/U/luXwmFv2E9lA/vHALJD3A+BgcqbrBL3IY3r/JJDU=;
	h=To:Subject:From:Date:From;
	b=dkxFjd+S1IU7Ok8AbwJNj0Rro1KMZLtbP9MsiGW2SdorbTs8HS0H7Jz4jMa2lfWo6
	 wgrSiOake16zL5xspas6lg9qUCmVSfP8s9tC/pcgmNVOBS28k+xm+lSZlmwHqv88Kq
	 P/He6u0lm/6blu/Zt1KytRuNgZVtC/q4OxmyNamfhdzfiNlubVuBH/KX3YOOkYeYwK
	 zrMVyj41zOg48j872dfmlg2qL9e1xC8DTOqJqXC6A7iiw6IKokMlnd5utPPz8GzVp7
	 lyVU5tv2y+s8Cj0B6nDnUDOm8W7td6Mt+WYPnfbbb+hLwY3Tghz33CUEGXn1JzjOCa
	 mIIZ5ZJEZdoMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01FDC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980486282.1670.17175911068851584906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614e3d4e0f205b72d48cc3224234c529ba3f93e0e04b1ec0a16bedfc1b33be5b
Date: Mon, 01 Jul 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719804862
