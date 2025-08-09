Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD5725C706
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754733594; cv=none; b=akaSN9MK6xqC7HvV0p0N3dfoP9AyIyd0dqhIcWD2/xa64lPUAKTcrQjzp2adGt3xnGd5LwYDRj5TtSiBonwRCwh+97Wo/LBp3ZBlquipY9bHCnyKw6XC/R2goga4YG8djMeDyBFFzzJc6dEcLq07C3cKxWrRFBUe6BsvLD86n7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754733594; c=relaxed/simple;
	bh=uopd3/mVHKnuhTJ+e8SoKYQy/xR/ctwkaa0xRyl1UCo=;
	h=To:Subject:From:Message-Id:Date; b=P7WEtG9jggC/lZw74h/mF776PvCLBUJObp947JtA6U8NCNOfxEPAhbhk80gL36bbtJBZV1cg0ieiHFX+ypoeNFlm5TX1aahND1tjEREj7cTDOpDCFwUlKQBoI9JaTpb2kuDRoZzQQ0icflOmutTyG8gs02zS1dNdWVsiTqNoV5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KY0BPfCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KY0BPfCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5C9C4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754733593;
	bh=uopd3/mVHKnuhTJ+e8SoKYQy/xR/ctwkaa0xRyl1UCo=;
	h=To:Subject:From:Date:From;
	b=KY0BPfCrWH2uH0lcZBBg36UbET3AzF/kfwrwUlkGvUPspsf6bx+A8E7/u1uKjEk17
	 +YPnd+JJwgX944zkIJXnCnZ/cUvavjO9/O0whWwW8cJq2NL/dzaFFYojNfkGuVlTM4
	 jSUJ5AJuEQHWikhVa0O7pCKwKRUxvNvQkfpFEB0N4W2rWVzYzUi9+yvo/Tus9kp8oj
	 6WXkUHBubaROrfOIbA7kM7SeDh+tth7ZFSk2WAUnZjr3npjCnF7ezii/ZYJumVnJhS
	 MWHq6xpfYIyesqsU4gIpn4CO4XDdghsJiMX9i9Qcgnp1bnixfu8Dzd9l+1Haz9xw6/
	 B4YEwfy7nTcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90562C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473359358.4214.15372986558506724974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49e27fc467f13f8c1a8eb776bc7b5fa19d84b8f2dd031686bbb9b2ed798753b
Date: Sat, 09 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754733593
