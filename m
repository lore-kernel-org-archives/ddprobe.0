Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142EB25F984
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769913234; cv=none; b=l8B4GFjjJgRyz7CjdrTF+b8Sy3tjKouovzpX5WGpiekDaDalXTqV3W7bTA2NDO/0bXEbZFTqsi3vFBdIRASKkS7qI852DqE5v2PRukQm1PgpdBzZG7JLlVra+/Cgtxumb5cEtH59nFVgIYsBECj63SQ6gAw4ApABZDKACvaBkeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769913234; c=relaxed/simple;
	bh=8sE47k9W6p3CQKHtZ4VTtDqqTOfDcapjXjJfiAU2bAQ=;
	h=To:Subject:From:Message-Id:Date; b=oam+FIP73lRx8CYnfPckYOJzA+17ANe40up7lfFPyHGcuP5shh66GmF8lhvFlL6/D8OWV7hXVM9h2CMjX/xqXoVs6OK3+qhr1MFuPIOf0rLxtJkwrDMlHXBwAYLwQPd1yB7dxxwzv2tvREuHzuSdq4dotNgusyEtiTpxRFFI4Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF0VQFkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF0VQFkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769913233;
	bh=8sE47k9W6p3CQKHtZ4VTtDqqTOfDcapjXjJfiAU2bAQ=;
	h=To:Subject:From:Date:From;
	b=KF0VQFkNsfvKGBhSzjDGyDIzz2mV5mVUZ6pe6++iPVJ+/IaH5DNejgLN7OMWb9Pl1
	 kgBFrRCUIagvfBcDTeYTVR0Ik7HHJbVBMdSJvXT/FW/bWoeVn+zV3FzZwTovuKemqZ
	 K9SY6Bt5tfaM1iVPNRQCjoc5xPChVR/CD+eJI0O89Nm7jZgFOfP7Q85yn80V5BP7X+
	 +yGVJNp9UgGcSTtkxUCOtKHfzukVBjnldI6JyG/xb3rHtzCy4Ad/EuNoASuPqdHE3E
	 7Y4lj1wZszeIn2HqaomLaLD37isew8Z0CxPIL1jEHsqFu3ZtikumP1sjggdD1ELBKr
	 p75ZBpjVvnu/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEFE7C6E3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991323357.31082.7975644472811839506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79ae31caf65c9b4db5abc2364e1cb443f5889781852b5ce175d3ffdb9cba1a8
Date: Sun, 01 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769913233
