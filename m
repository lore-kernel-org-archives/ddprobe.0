Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E910E0
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738414554; cv=none; b=gvP30ZFbOkD8xGaWmENqrq13+/XLyPb58th5U7x6GgXOfP+TtUHN7Mx18mL88t6bbOXgrx0Fwmf50nCSfzhrXV3sBQCeuFpbUnTTDUoQH3f0mn8ZbD9kK6jLB8Y4q2dYYqUzxHGPanzVP0ky2I1cYonig63B2uweMLXGyDuVdRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738414554; c=relaxed/simple;
	bh=PW2wt6QVzOCfYowAfmNDG/nL0G/5MVzGzo9Kaq1Xc+w=;
	h=To:Subject:From:Message-Id:Date; b=LXRxG6KzmQ7gL4CiMM7H+Saxm7dXW27oQ5hG9u3RyL3tZ1Ud2tkUO4XkwGLjCZbkPtJw1r4MqiGJFsPfQDXJ9AZKtxipX8NEXKf3wWs1rhunW8AQEOnEp2+YmDXn2MiH/l5k5WUJErZ11JxQT074aQWAArZRe2iVQOgI831tCG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jE7KtsZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jE7KtsZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3ADC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738414553;
	bh=PW2wt6QVzOCfYowAfmNDG/nL0G/5MVzGzo9Kaq1Xc+w=;
	h=To:Subject:From:Date:From;
	b=jE7KtsZ7k/lqy7wR440bxpEEiZsY4wtY5HX0u70GO0CgsDjCdwrHwluUHjWhqRcJ5
	 LUKYM+clqcu24djtwFm6LGnBC2kJB7UpSBR3bmH1Krec4Iaa7gsA+GLRqsH0xjhbYr
	 9DKphC9fL3x3jfA4JVibAHQT9rj6CMC6FZRALemHp2F11mDyMbiFLUkUUzLL9ooh6c
	 TdDIfv9Yzdp3O1UI5NC0ykpWgb09wucrhUg+7QSDEO91/WfHeHa4jHoUBOV4I5hy2j
	 rVljmBqEoLaP3h4/sH5K//L4tVha7OUg8+pXJei9rooSbHQmZarmskeC5lxRL5+s2b
	 gSUIygQ9rtqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0268C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841455362.13614.9840940709122975141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f545493aa16c9111f5738f1133033797641eb49e997edc029ca52df165ebb0a0
Date: Sat, 01 Feb 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738414553
