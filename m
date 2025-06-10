Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B2B27AC54
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564594; cv=none; b=djEzwM1L+EtmPuDQzm2MfSRzQfWgCKmcQGy0wSD3JyfOgppWeSycrTK7Rj7k1Ds2OQY9Ul33H4b4kBjjo1oMXc7UfQYpasZ4LmvbYW8ofBmmia18sL3xmxfsvltdZlCAiIE08qsbXEhAHdlIZ6yIjcl2Wt7yluVlkStMrPt//Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564594; c=relaxed/simple;
	bh=F8TrBCezC+O7YTuNhFw6EuxEgbEroVzybxqf+xx+ouk=;
	h=To:Subject:From:Message-Id:Date; b=u0yyG1yxMrqsnF6KOrJn27z5tAdRQpvY7cfR9FP0GDvfZB4t562MvMUX1MiKDR4JHs63Q6sPMeGr+w595/gDyUjYYIZWw8RwbjvyUzwfbfjqTn/ReREQGuUAofHJpemXqMC3pdPSSbTrz+jjCk3FeQUq4ZtTMYhRxskTFXL1yqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBdRqSH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBdRqSH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA94C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749564593;
	bh=F8TrBCezC+O7YTuNhFw6EuxEgbEroVzybxqf+xx+ouk=;
	h=To:Subject:From:Date:From;
	b=YBdRqSH0fxX+7NZITw5XwHv5XMfkDaFVsLXiAnlZ0hh6ZptUA0lXeRih0EdxGNksk
	 PKRLPuSPUKlzazIYY5y+RmZwliLaMA5cVpYlyfLFel57xqfNBN0yVtkZWWXImX7fCB
	 WG46RfOn3yWCQmixJf6igz8LuF3ABZrSU11yf3WevFNIzoU13VXkTULTfKPZDTyLqn
	 eVoy6dhySiucTYVvRYmmwLPdctr0pobDKr1tA9RnjoPEZXJU7IYvPLlMqucmviu+qX
	 54wSzIs7/xX4iNA4mEoXvZt+ZPc1ha0G95u8ZxMFC6rE1P9WzkkPxGafH9p8zeei+O
	 HeafKLTw+pfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EFC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956459357.17972.4783746891459937367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a175894dffa103fe4899502df810969760279617eff3abb1afae1f25c37ce61e
Date: Tue, 10 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749564593
