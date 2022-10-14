Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CA7370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF9CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665709853;
	bh=8s/jddqbNH28vQDt2nqOSu3m+a4HlX0Qx9BLbKS1yME=;
	h=To:Subject:From:Date:From;
	b=n2MHKpd9XH61ayR5AUA7duuXfq9KKhGWT8vgDg0B+IAxG/o9y9a0omXAEHgX3K0xq
	 lY2P1eW//uZvyThMCro5W1P1jnliD4BYOFQy4klnwVtSVGTPBnL6q+SqILUKeRMKDJ
	 0AZktbCDbfaMGnPes1/HymASDOildOX5e0u8hNhYtq98jwIVJ190ilcmwHGsCz763Y
	 /mdGmlnVnZdZmaLD6hiC8tyQUG1hDE0WitL1ncTV4H/z9QkLQGGQBYLPiKVxNj0LYT
	 XUf3+ENgSdjdDyURaPSYvE5scc0IoBoTspgLTqDatoIFR+gtshf644JF3/2r1LAgbX
	 aRDC4+lJ773YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5550FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570985332.14515.5829902126927297895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c61ef0eb9460c985d2da0c5e4faaa2ef774f9febe6350601e5867202beae03
Date: Fri, 14 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665709853
