Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA29134AD
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC92EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692113588;
	bh=s1gAnhua1TyUf0QIYCn5+G03yq6eIsP+ym2X0eqAxjk=;
	h=To:Subject:From:Date:From;
	b=N47UetADWXIRQS0CrLVe918xAPDJWITVzVFxKU3FJHFS9H2kBUWWS72bJR5Myjste
	 qplLQkK8RJeiD+y7kX/SVi1ZVT3SykHfwk/p5Wh+eAjUzaWjDXTrs0fYS34naesVq0
	 d+MhCCZ/epx5tkRwArvW7+unlDVsB2ycY9JMqrpOJRc/KzXLXgVyVz3LPe3STc81KA
	 FM/wDUfAFiMw7Ycn3bwe47zmlvlhhJcO+000FsyJBYa2Vnd7ZODbwupBb4/U/IjsZZ
	 z48FzfQKmmOPPxn/10laEKeRxTqLqLUzZBAHkAFhjW9FO6FRrV5y2EN6AffjCwZ57g
	 ka0Z7ljyotgyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A57C001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169211358871.8852.1881589794514912268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7136db2a2b2f58d6216bb7205b3242c35ed3f36c20d3013cccc5d2138983b9
Date: Tue, 15 Aug 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692113588
