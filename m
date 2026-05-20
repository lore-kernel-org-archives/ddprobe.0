Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C72637754B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779265834; cv=none; b=qED/MO7/jVJh1xSCBNAE15FeGMEFaWOY4gGFsy2QcTLdkPxJhrONulKwb0Kjmbfksrh0ogDloUfrDyJnPMMWpnzk82GdhZ6ff8gVLUX1dCGE1yCwiiocggTHQNzW8kJ6Ig/hstc4WReGjM8gWMa9nr5oHrbGoh9MWBemaEZrmGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779265834; c=relaxed/simple;
	bh=glr8GCPgbiyNnH8wNTnHhLjfr9DI7kJO0F5TBkKG/e0=;
	h=To:Subject:From:Message-Id:Date; b=ug6EAXcdSTI6JMcn1idBTAh8yQ7Hq1aNWxzgWGnq6rk9OGuoewA3yLoP5ThYq3zValqtmau0mOHmsa6Blrd78+WYrfiOxpRVjjtfvvQirliEFmjbCZU/ahn/WTmOEs5LzmcmgY1dTT+I8eByIwyVFdu5pU2LQWmG0omP34MDCio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0lpGjhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0lpGjhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C962BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779265833;
	bh=glr8GCPgbiyNnH8wNTnHhLjfr9DI7kJO0F5TBkKG/e0=;
	h=To:Subject:From:Date:From;
	b=s0lpGjhsCYSx7TP53HhUoSzsqSz9S8tcG+JqECS3/LnqCRa+Oi6im9Bee/C3v4wrQ
	 QpvXZqb5np58/K5TJSq7V7m53cnHycWEfDbIr1jYN8bLvzU6wlFqkp5w+1gmjUkFlG
	 bTxjdRc1Ht3SHBeBwl6MgbMxevgyTpPAwPWJmO/QJRIGXX9yK79iZHmJMtFBCwHNpE
	 mkPQAqAFx//cumHiPpB8zKHMlvdONc/yGb9wng3iydUBxtxWdOby/7AAwep2zNk/Bq
	 eY9zQgvuFlJ4o7VZZYcxfy3vGMzrgOnqET2rmpZBnwvfILR7LZZCW2yf2UbJeA2F03
	 9sa6YXcjs5bZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4DCCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926583370.8044.14937932563628198193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a019689afc9b41b023c11ff70930e59d9d80fc4c121928c879187dd10249bcf2
Date: Wed, 20 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779265833
