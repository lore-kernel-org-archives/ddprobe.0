Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA841A5BB4
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772928894; cv=none; b=q3f+6NPOHMLc8KdUDvRhX7GY5Z1DurvvckOyd+DaVaw7VId9doAMGWc7tKXwQks3iZCkWDt5xru7bRsdJA4iGHmNYGtbxPccGcp/cbdkCXkqhz9FEJ+IQD7suFX9SpFBcwqh6XiYiWyUqeMdQ5KHvmy/Wwl8lgZmjLjRqL1wOqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772928894; c=relaxed/simple;
	bh=scTMQqmedwyUBKtUvLXuYyiNPSx5zzib34R3LifbSmo=;
	h=To:Subject:From:Message-Id:Date; b=Vv8g6r9jif+jyT9quFn+dwUZ+SzhDnANMaA38zW4HSOEdPg0vKxiz1UVuMwHQ+dX/7rCeAgJ10UAn6JVEwbC9h9uw9eRwTHlVxO1VXBUVItIP8LMaZoevV3VfMiBXeQy6FuPZPhBZdsLGMgIV4steZ81uX2YiXIpaopRjSo3GbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds0yB9CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds0yB9CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7270C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772928893;
	bh=scTMQqmedwyUBKtUvLXuYyiNPSx5zzib34R3LifbSmo=;
	h=To:Subject:From:Date:From;
	b=Ds0yB9CZ57gEUUeEOi9+SgT/XdDw/Vo05W9xgQYeCIelY2sEEhw6pslkV1BohCu9J
	 v7IrNSiYZ5WSr+XL96pjRqAIjCMRGlLvLm5hUoE74ZvY7uD8glJYY5Otk6xd4Bh/Zl
	 jEemslkaoTmV1wVw5YJcL2AXvvERwNWX1S+cSPflJZHajGvCIjs3mOLnz0794Grxl3
	 1UC4NUsLJFMuvyBFhXPPLWelGJAthCxk7pL3UizOG3NGI6hjqzXkZXfhFuHJSuXiOu
	 7QB/GToHzkFsK8ENJfxkhg7ccjdnx4shecPRT0j0Jof0PGI2lEz3e8cxDIF8REuolM
	 9xyzrq4DYHpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F61F55113
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292889357.5830.6207914986315502941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd016b384a8363e832cfb68389962b2484abc99caca2bae7a33a4fee9cced1c0
Date: Sun, 08 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772928893
