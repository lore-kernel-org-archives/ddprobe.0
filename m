Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C11D1F4C8E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766868234; cv=none; b=f9vko6rmvV+2bVv4VIBnmxi5XpMMdimCqRc/6OwHzNix19XXkGHoqoD7wo7z5mFTgUeGwM98AE2vknv1ctqxGEV50qb7Y0rVP5YyftY9S3NLlOiMUeN8LsJg6shR8Lk3EL+jMBPeF1qXVGk6kojf/aBtixKFTJydH+MWGOKUILM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766868234; c=relaxed/simple;
	bh=UsevGrTUPckDART0lzX3VAY9SwEhQTx8EXMFhVZN9Zw=;
	h=To:Subject:From:Message-Id:Date; b=NgV80SSVBwyCmWb/69tiSs8jkfvvJN5RqCkPoJIpi8r/9K0mh3dN8x8yB3iHiGwKBDu9ezezzxqdgT/N1lyogK9GY0oXQ8+WUlcdqFT9CCF09YyWB1VKGaOUlNuneVgwFYph60kNDKf43u9HGP8My9ZAW0rplFxciZgKVWYPPbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXVjvGJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXVjvGJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01F9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766868233;
	bh=UsevGrTUPckDART0lzX3VAY9SwEhQTx8EXMFhVZN9Zw=;
	h=To:Subject:From:Date:From;
	b=WXVjvGJJ2z2zwECocHSUP8sGKSNdZIMeXHpq+F4Fm1lBVb2GpLuxrweTP6cBd49iS
	 nSHh8J2ue9c9r3FsjRiRFachjupYv3WOtsfZlsQjmnx6w5SraZ5/Wj1JPdwaTOvVFR
	 CGESqN5rTukmGjyIml/sHBfh7JsaMjvO1kB/6JtnHdZtmaNbuM8xqmZewFHxzLtVN8
	 3l4gcj9wMoRE5Swhh9pA1c1+BS9QV1GXEwE9GzJJ8xtqyEYu+M1cI0Afr0Qye8qpNF
	 TwvlNZHemFPbc3pXslMVQWNsH/TQ6eHrY5AyMWjdKhbAYRTvsFhho/2jSaLRS1vX5e
	 jqtSTdiewevfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B193E92710
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686823359.5749.2890787984347694808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296681e940707385e21ae613dcb854cbb6fa690f768e8eff3cc6d07b241716ce
Date: Sat, 27 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766868233
