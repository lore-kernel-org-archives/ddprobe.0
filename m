Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4A714B09C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721809555; cv=none; b=RosPP6aifw9WwKkWte6dKhOSFx8bUg1m/cDxGqYJnYaGvZSfW5kVArEsdEsTdKjB6F+zQSrp3PEzn+Litk2DamtV1V1736jZGf5x0zAtOiVFUOyzwXlsjPql64lqzgRRht37NmXjkQXJPYfWbItijQWXrpC/c6ykLcUJBSUHazI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721809555; c=relaxed/simple;
	bh=z1UdVN51yHdUJtNpK+b2Xmmt4cpwXv6ruiHc9VaEzAk=;
	h=To:Subject:From:Message-Id:Date; b=rgVLYdsD+Fe0OKwE2QZeF2841ObyCAe2s73WtWbFAu4bXBIxykcohDtCwg5Ot2hKX7V/dHF9O/K1/3qsIsDlGrlRdWkSUo/W5ggyZSY8fhO15bdl6NRJWYbVlX5Sv1BTNbxPFPvOHB1/ZqJx39BTro2bEvpCQfDKMEE+x/CEO5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euhIJlOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euhIJlOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2147C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721809554;
	bh=z1UdVN51yHdUJtNpK+b2Xmmt4cpwXv6ruiHc9VaEzAk=;
	h=To:Subject:From:Date:From;
	b=euhIJlOoTdB6YwW+n9GkRtErQlq0Dr2H07tXD7GqFvu6udd9+deOSXlbzk/mCG2cd
	 iM3LdLssf1cFO5sl9YJM9YcEGdZsZonaJ4C9+bKHIXOiZRznwHkP7UrsiS9OeNl8+t
	 8y6o5RRmcJ8n9wU0W/yBm80y9s4zeo5Ua68grN4HNOqpTFt6TVig/FU1YXcHKm12x3
	 RbA4vLcN2gutN+9DPA2wtf/69jaDIoVYpihO1jNGyydLVdQ3aB5Gs+Vn/45sQkp++L
	 BSZ2UUn1bg/XdGaoyA0pPM46KmQUF3TXePNrbsqJLvPJO1Ciw8ttV/H1kjRcS5MHru
	 +ML3m5zTJCtVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995D7C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180955360.18492.16039687717849635575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691c79e19ecb0dcd9dfe1b98c6d367099c8e99c16288e4251dc61d6c8b99c631
Date: Wed, 24 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721809553
