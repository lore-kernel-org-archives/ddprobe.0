Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F8A15539D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738911354; cv=none; b=PZjVnTOHzna0JvpTvWGHtLU4VLCC6mOedq10QQ7i45IUiZVnChQ62lGbjSsnFVrblONCH5Q2qrO5r7HpUPenYDY3G3JBI3MQ4/rH8NlA8Q3KogeCY/l2bVGO8Fi5SQYvn0YsMdAtSqZ27cLgTbk+HR/gvvfZaA8ijpsGOPMTbAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738911354; c=relaxed/simple;
	bh=K2gub7yB36kpzC63ZpWN+3NT8ENssmQ/zn8Ny0q4Q34=;
	h=To:Subject:From:Message-Id:Date; b=tgxHMSy1v5P1GlwBcD+yVl5wxvgForG4GZe9KTwyhjChX5JCwsPCMJIVZMzARE/8knfCpG2S0Q7Sw572iPdh91Jco9Ti3gEMzDy1JHPv7le3Sb1Eju/OI26VefNRq3pyKP6zhykDbOcnIhySKbXRW1guRp/Bp6SxXtjXMV54jW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoVyCgDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoVyCgDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B7CC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738911353;
	bh=K2gub7yB36kpzC63ZpWN+3NT8ENssmQ/zn8Ny0q4Q34=;
	h=To:Subject:From:Date:From;
	b=HoVyCgDV8GCOghlXt5p2dprXR06B5Xl1hayIaqzLaLiuSzf8fNG3VeRfRqZSm05JO
	 MRqU1/FQfXHKq393yXe5jM7bzFcthSnMFbkpiYZ53AwRVq8wtLXkeTdCf3QKx+9Z2x
	 tTq0VTMV0xZPI4r2vGm8Z/dYG4qHNoF6H6v8XbKatS1tbe7Cvo77MWV79w61TbW4DU
	 ui/U8coqyA1geuCUJQ1RMZ3RaX7QsKXV0ADO7Bo/rMjZ/SAmkkkU7wrJe+RMZRKyzl
	 NDQKjl5ByMnze1mBf6S+S+0hRipr3nbD9O3sRyZjXfMo5BkTAyPjxQr8xXTQ2FBx3B
	 YSa5D4f2UR9/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA22C02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891135362.29144.11840596098483067966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e59be3ea8da4d69b9b663c95100f57f3252ad30b0dfab76b82e6133804387d
Date: Fri, 07 Feb 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738911353
