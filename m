Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEE93563CD
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787157034; cv=none; b=b7TiKiA7c6zI+TDdjCS0quaVecygIJMZveE8fXEBU1Xqn4jmH+I2m1LyhPXuXmc3PUYvMZz1+63CWhOuvd48HO7i7yRg1fscbUZF2zF5+3yT1ht+mA+zhMv2lyj8tPRjd0bTAhWlAJp8ovlln6/ZBzglgn2t+O6MeDYH7rr2tW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787157034; c=relaxed/simple;
	bh=6yj8SOu/UP8YgSJUHibzS5WVnhqnJYKkMCgq9OqFwsI=;
	h=To:Subject:From:Message-Id:Date; b=pCReyEPaA18FrGWuG/UDEP2rAMmc7w+DkwRtOWwcpculk3PyPHFfbqU6lEaID5nvN5TnjCwiUP8NXaRg7/5jlhYiFezcpp+r/q+J2o/6HLrZn09+fDJBIcMkLLTTQ1rkZvDqCMR7dpsOPv6Om8nC7uUeeF5dDuWL75K6VKNjLGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHB+CZh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHB+CZh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE665C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787157033;
	bh=6yj8SOu/UP8YgSJUHibzS5WVnhqnJYKkMCgq9OqFwsI=;
	h=To:Subject:From:Date:From;
	b=QHB+CZh7oWjV3t7cUpQSXeHZZMcR4kcoWtzlGAhBsEEgH6JJh/TFbkbTto0s4G0T3
	 GV9lxvLWCmn6ob6E7di1X44yXytsOUAzdeJ3aB7s29EeulMYlPMweXau7ScN7ii0YB
	 h178EgvwHLG6EqR5rF/lzsEXl1t+QFi8SalPaEj8i9ThRWbg1HA5ILvbWdj8tw9yix
	 E/4VUmW9QgDtAb/rS5jHTcurgf8DIpYV2Np5uCbdtKWazZpATvBxhmRPklapoz64Y6
	 AfBGS3xM7ahg+Hau9lzbzyMgcBD8zYg6lOokf0qisOBIUM9epI4PnOiXWU2uu96ngi
	 uDKWeRw7HgrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B53C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715703372.5558.8913822509895478495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949d794aa37243e166b76259c9bbe236548bddb05b68e88f2044d511cd098f61
Date: Wed, 19 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787157033
