Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515D0368D5A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784028514; cv=none; b=qmvf6Zl7t1d87WfMwEy+v4/obF9tkAkG6Y18u1n2DLNxQiXbwIxFc+WmLT0KSy6sZWrK2hAv7XpKsyU68pP72qec7EV9FztPZf/AEdPNwB1MIkimegZr/OFSofimx7X08dniHy6qDFJcWEuW2UHPZjakZq1i7jsESS8QJQj37G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784028514; c=relaxed/simple;
	bh=Gki8EXwy/OXFnnXnOpKXdG11fzL/kn0knXnPicLkRYs=;
	h=To:Subject:From:Message-Id:Date; b=t5Lp6mAvudFQuCU8XY53FAxzqKWCPWRJ6EkBZ2n9URGb66Sgki8uhFTLX3mEwoaUS8VuNENrjnRjPG1lvn6fzz7ezktlqCdo4SZQOpSGP4A0Tr5h0WRAOXI7Rj1K8uMg3lOxBkvecyIh9Al1LtQxoOIXROG0SOv48eWgf+O6sys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ccb25mJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ccb25mJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30FBC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784028513;
	bh=Gki8EXwy/OXFnnXnOpKXdG11fzL/kn0knXnPicLkRYs=;
	h=To:Subject:From:Date:From;
	b=Ccb25mJWUf1LX4vgwtBp56hgKj8zioHU6BsmG0GXkDNepGM7sWB9rduUwUGRz2s8l
	 mboxu+KG+g8XCnRqy6mugkMjZ/DiBeDCS88xYkSlaVRtkqe71rBm4HhgOU9W9jLU5h
	 ZSidzkMt8UqukGvIn3sWQshEn3zQ0Vc6Hmk5jXvCRdbHWXcpbCnlEpQhAf2Yj1cYlS
	 ccPFyNjRa7mv8W1TwRZ7p/bTa51ffa3IZv4yohaJQY6PZTvwyXgN9Z5ofITOiF4b5S
	 cqqK+WRX+VDLTPcZ0gdzFfChm5Z390R6G1ytShAkhEeF5H63/7LVtgJMzHBNYxhaSn
	 ycpR4U0CCk+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD97AC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402851368.21770.15785664787422630478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269c3e2925ca70ec4658c5bc9021f886f24f212fac58689732441705608ead8f
Date: Tue, 14 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784028513
