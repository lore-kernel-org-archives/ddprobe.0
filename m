Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D56B2AB42
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4375C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687301528;
	bh=pn+XKtbzJDGzZWc+6pgTdO15MWvGTtSgyugV8+5rJNw=;
	h=To:Subject:From:Date:From;
	b=jugCjR30HGrbjc6ohNC8rrqe2gmSlrbsXwLueWQGgZ2D3QkJfc372zNSADh+Fp8rw
	 mebgeVeZeCirpqgX+jyokYcy7Y3E4aCr8IPEtD8owcoci+R26R+KrH+ZdqJ6+Mbk5R
	 8ujOb3hYyEqxuqeGzReYNqc9X1vlcWPlHV70XjTE9SetSKNRqzpZ02vqVaEBiEjYQI
	 KD99oj4kfrkEfVnL9GSG7/GOOsBG+V0H+sX3FwA2meJcuoEz74WjBK9Uckqg89M0dV
	 dHiU27m3EZ0pGAPOaebbKC3coDwGmctCxKLGpYJD/eMkJxLpQAHzHNXRvp9M8zjRgb
	 1Rd826NiGaF4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EB6EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730152873.27733.12648755797018387970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4ad508b843bc377bd7bb8018b72eab0ea346e8a8b67b90f54ecfd10433dbb2
Date: Tue, 20 Jun 2023 22:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687301528
