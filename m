Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B44727EFE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771305294; cv=none; b=B0j6/zzDUySK3tbeZw/kmAulxWHj8JUBUiMtDvxog+4QGI2t3NWNmEWnKDYKs4u5fmqgkN4lw4vVi8Fzk40+y+qVmE34w1FYHg8kfxk9iz2fBKMz+MsifpxTymPTEaetHRqXQkqt6QGDiOEPHiJQ8ozQUCZdamZhsZRcwH1oFXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771305294; c=relaxed/simple;
	bh=O9omd0M6nOXB+C7CwK6Jh6PMQIcdCZmnp5Drcy7Vh58=;
	h=To:Subject:From:Message-Id:Date; b=KC8PatA3CoqdmoIObCjCPBm6Fc4bC+aRKpz6SeI4qPYa2nBuQWQwUrZ29n8jCgKzIwdx2HDWAPyZMXvb/F/86EdXrhTaG5iYGCA1eHGmtRSnuD1WZWD+ZHYsmLTQLbUA3zwExXq8WfrndauPF7SUPJUsFZcVS8CostMQdHd71MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXBs6YmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXBs6YmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6D7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771305293;
	bh=O9omd0M6nOXB+C7CwK6Jh6PMQIcdCZmnp5Drcy7Vh58=;
	h=To:Subject:From:Date:From;
	b=IXBs6YmAIRBT9JReQa1gFF48uYAba7aIMfAvAAZeXZQp4jo0+ymAq76EB/HcuU7gO
	 Vnh2p/DH6l3phRB3gP02hiiUs9Q3GWYz8oZD++rXrXGR6vKNkO0u/HQ4O3LDc8xdb9
	 W77X98n/GhjYsoQBUMgMpmQMMQDC/hbbCLkMN+OsZK1U5xnfD4nj6VJyd71U0vvPts
	 Y6a563WTw7RX/26OIHJ0u9tAOjEevH1zk5F70K7AD4bJ2El7GTtTiLxv1xvYF8mn1c
	 h5ptFkCori4gUXHkZFjsVdqBIVw1f7P3zmmHBHfHTUrIELaqJ8s11Cly5gwHm91Yad
	 mbFViJvDwVwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E71E83854
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130529361.7923.1831012091445355660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2690597e2657887893d43b2552d3378376045f081d8951d0b6620c733c8bf300
Date: Tue, 17 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771305293
