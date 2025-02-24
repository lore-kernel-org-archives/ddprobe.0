Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DBD1BC3C
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740382734; cv=none; b=jGMo0oswvqfojNbf7iz3yx5sC1uxFqqTJH1FxAQmTJE/0y9jSEMiJAbXNhpUpE8FLJ/vax4u9K8n9+SfzofrUJu9RxBvqg9m4oEi89VwZtCUbnj0xB4igIVzJVv08aL8KlnYKhcA0IgezZu3pZaJXnN38dVg0kY+SuotqnL2Nmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740382734; c=relaxed/simple;
	bh=PrEx3neJHl92I+D2nBtl1knGUhCp8mTRysb9IM4LEPU=;
	h=To:Subject:From:Message-Id:Date; b=elSQrL4e65JAx+8VGJPNIHNrfJTM8duT4ymg6qDm8eDmNtxFR0cBoXU+girXBKLwg0sxg8W9Do0uEX2Yd5ffTyjmT2neGPpuYqqwvnCh2D82YQ4uRA8+CzaMSPmRch1lo9f6Px84bIjzc9IaMV3zKaRdwksxQ5+h3lSQPcCUV2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMjwKPY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMjwKPY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6FFC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740382733;
	bh=PrEx3neJHl92I+D2nBtl1knGUhCp8mTRysb9IM4LEPU=;
	h=To:Subject:From:Date:From;
	b=vMjwKPY/5P1CHsueetjRdghtHl8eQjcmnAYgrBRF4Vp04GWY4byBfauypm/vbMNtR
	 L8moKTXJ4/NGnPW383yKz/pdPY50Rdvhf3PD5tszIGKCHSaM6el2+2wXw6NMEYXk7F
	 ZgGaywMEYL6ULmgU4+wMFfFBC/ZILNSZG1hkpAq8/gGEl05tqPV6trZ49N2DQOGzDv
	 n5uvpvZoVjW/7X2HheUsv+q+dtkFpRa2ciHxmZflWtBHgolpkzrvKBhNhnY4AnpiaD
	 SgDR9AtgOOlJM5UYp6HAzHuoKIInzIhMXHmxz1ez8SvlBc9jGuX1QJZRkDE4M/icf+
	 CMHzgKHTaZNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D4C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174038273358.21234.14635029628417489093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e59610afee266468da7311fb1aafde9958b90aa0ee82c54ad7c60a27df453a7
Date: Mon, 24 Feb 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740382733
