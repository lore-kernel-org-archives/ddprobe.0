Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3D03A1B6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718506703; cv=none; b=FeoFbAXokW2js/VIUIdV22sHDYNiVJe0Ym0pDiWAJoCGFkdnhwEfN0xWx6ydjxq22HvOErCnKJRw6RLxYf/Hh3k37Hi0sjYzH5xRhYJ6xPWrWuNZwgq6GJwJcgfDubOrD0Oe2xw9TvmJrU/30oXznZVqWnJ/pZPj2iuxL4vOsZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718506703; c=relaxed/simple;
	bh=+QZITeTQn2+lNIaKA32zriNz5El55t8HtsmM51/vO2s=;
	h=To:Subject:From:Message-Id:Date; b=obJDKUncltoHDl9ZwiImOkwikdaxUEKot5YDNDnCkOzVGO0Sa/Gv9S8Y1og7dKn+RRz9Fzb4JDn7pZFxnqBIDr0Wd0wqqK0/bRSblHq/bIReQS8/OTYXFCqNkX7x4p9NP8pNlYmcVtFXOvu4WjFUs1qpJyv+mH5D/ejrhxYPgOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKQYlWQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKQYlWQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5110C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718506702;
	bh=+QZITeTQn2+lNIaKA32zriNz5El55t8HtsmM51/vO2s=;
	h=To:Subject:From:Date:From;
	b=TKQYlWQX/zPGHWEqMSht9SNf4LWQooZOxSsRiIEL0EYYqn7bs0qzbdIRG7203hsBb
	 A8upOrfFwpTw7yxnqAn8QNmPKaBZo+RzX457UjvxrvtQNJTTp/nuobKJJue4gYXlrn
	 S/6KKXJ+7yaoUYpSkftq5HCagF0Dq6YsJ7TwWJgWdybgxhIZoi69DQgZqptQPlz9Mt
	 TKl9T6T9ZLAgjW85DdLUrW6BDnyuKjqHQVUd9YAyScJkJIQS53jVEAPXakwzux9xu0
	 k35ZL54wlZmgOGP/AuawSw3PM+IFTIW82Z91XyeaNzM5rTJ76LEijXezFUz0sldubk
	 VsLIfJNH/oV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB41EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850670281.22836.3254492017758348738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bed3b69422831aa2cc71667c02e908d95f58150e5054e755b9cc209a862ce6
Date: Sun, 16 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718506702
