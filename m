Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BC21BDDF
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv76C1eh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96DDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697212628;
	bh=1OZxfCsUflA++q79gEoCMi4ImZ7zNPIhMLnUhkTUGWU=;
	h=To:Subject:From:Date:From;
	b=Jv76C1eh+c5BeQcS8fbIvjltegwVrQyGHfTK5gYRuck3kxiXZlckMnET5SzrN/hri
	 p6Nln1Vc0XfPJdKdsM9tm2YfYfw4C5DZdZD1VBFfu5eIk7U1sJ3S0ZFeUm2P/IQ7p6
	 KVEuCq1vPZPzx9/1Fx+7ZpcaKTs39cF/qTYHln5sU9NCFOXlGDG+mwLiJBVcy5KJ0J
	 7SInhMTtTM3EJVcCmHuh7Piu7IJP1i7XrNeFio+vi+ddF4n323GlLYYmZ0fcZbvOmn
	 mz84dXoJqQTi91QLHSQLpiGycY6cz59AvMl8nNStvfq/kCT0s3igbr8Iho2T9vGKRh
	 n2JPC3BXPHe9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A66CDB482
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169721262874.16303.4909047151009906571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ff56c8573dc0a8792124e937145801be9ade1459b378c425430f377410bc4a
Date: Fri, 13 Oct 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697212628
