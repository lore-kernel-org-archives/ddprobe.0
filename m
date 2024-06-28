Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B266155C98
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719576263; cv=none; b=C2q2vRnbU/l4EUusPitINabtuvf6L12prE+QztylS5E223atVuBngWEnA2yz6DTzpxqhIaEDmYF1EEpj1qeSrItX3N2Ilie46u7Sb5/cW4TKgyL3jF0QaOxtklxz3T2kh9/giHqoHwnRoIOS5eOkW3ccvcIHZsGU9gqm/9zZ44A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719576263; c=relaxed/simple;
	bh=Zbwhg4bz1tBANGXFLKbDD00fMoLqMV4uWGlhHjJQbKI=;
	h=To:Subject:From:Message-Id:Date; b=nbVxra9iVe1kt72/GRQEbgwHFahAEj5UbP2PR7k2CTR+9DiFLBaLOxNIBXp8XZZRHgWQhrAFpp+ti+Bb0rmIy1r2rdD5ZhCKqb+vTcSwPq39zI/s1y7J90IfU7WQTFcFI/auwh5oSGSyhs5nK5MViA90IcMRVS7f2DTInNX6YQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjNTWTMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjNTWTMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC1E7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719576263;
	bh=Zbwhg4bz1tBANGXFLKbDD00fMoLqMV4uWGlhHjJQbKI=;
	h=To:Subject:From:Date:From;
	b=DjNTWTMtO1rJeAyqDHHnjcE4MqRNbN5sFdOrzxlN5r46U8HnTKvrxDXSmkXxWOGC/
	 mJ8UyrGnT38OHsyGZHBhRcjYeU7tHhUAbbcT957uH2X36QqPnWcbbqS0sZXY9+XY6x
	 AZvet7YfAFmJmtpUVgS2KkzxGwSqye5s6TeZ6c0ZzUb8+CEkj3vJJp0o34gr430s7g
	 UpIXFdX7HMUYDYfFq7n6m0ZO0XTjjNmMFUkNCgeK8/rxytq6KcDrtF75kwYk/EcMBP
	 v9BxfrtC/Zoko9Ts7m3yggL1usswzDK2EsS5FduKBZCdFiawIw0+BbarLa+uXbuk3Y
	 KDOeETFkjs0QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8728C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957626285.8456.7658815331197530955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd23d50b73044dce73756bac4874547eb1fc05359735510199c68a40b5118355
Date: Fri, 28 Jun 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719576262
