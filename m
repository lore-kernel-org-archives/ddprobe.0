Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C8548F83B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791057636; cv=none; b=JDn4shfy8GHSD5bj7OVk0vuD1CRteU4YCbWbqLwpaJfihGauvYa85+Ia/lFGoP2ms15KQhRH7mMLW04e9Vvq86xvREeQTyaIeuBlcfUMttfWY6m9QjReedhBbH7WEO7fOSFwyXe4I+0B+qhzUdsW+VM6MG9nnJ0Yz09HLELd3vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791057636; c=relaxed/simple;
	bh=23RRM0qr2jeaJUAUtddWtfjLFsJfJVh7GdIE6kxekwU=;
	h=To:Subject:From:Message-Id:Date; b=aNq/b8p7pGfsy/FwiQpZiLnNg2ONgnhX070IuKTyGcWaBsRBPaxoC88qSLnRlFWB9qVVXj4Te/0WnxS7ZN5Gr0vK+82Cfm+SpECkefaamp/GosevTDU2AoLcQS9grcxOGhpk3qiwAH0BVQ2eqmHcDhphcbkdlEiow8tGUTeYA94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GME7J4wO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GME7J4wO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB842C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791057635;
	bh=23RRM0qr2jeaJUAUtddWtfjLFsJfJVh7GdIE6kxekwU=;
	h=To:Subject:From:Date:From;
	b=GME7J4wOW+OoidhovbUDIyN93Tje4LQVmohJPuBejYnqjfPPhuKGBg5knctd0qcRX
	 0BcS/SqK4jGwWtHiAZuDAjjnJGQVaj0ZoA49vj3Gob/tOfpSht0pUsUK4VqYsz55DC
	 tetLyVT4+vt2rEacpXbKYBlXkLVQEmw0bl0jUU/0qSfbR+CKWkPpGqUBI6IlEsyRMn
	 pnnRfHAR8uicXhX+3qB6lf3HBg/pkt4FPnBDVOdEhN8eW7zJUYk8Ug3xrr9kqZKn3w
	 0PwmoBVrGZH2XxrN/BiEl9fsgSmqVlV/X9uUmssygdLf3YwvXPMkHVSp2q2KpCiXql
	 hzkhMYgxqCPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F38CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105763370.19451.730452601919282582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68426427c464ec03a9ef4d27f5a2d8b8bd9a7ca231f1165ad7288e0513a98fe8
Date: Sat, 03 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791057633
