Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC1915A1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757EEC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667618454;
	bh=uKUZqT5OA9yCxdOt1RRfFuDoT71EuTjp2yoI3IDP0iU=;
	h=To:Subject:From:Date:From;
	b=PR32hg2/1IqXYIaUqO+2ZHgV0kMKpsDzgBEXxhKGHmku2dJ6JZBYBvm6vL4xk01WF
	 BbZZgW1qNbAmCpsZdD/KfxHEI/ZKXcTrhQiAKcVdrqStOct1ZC11inmaQY2fVar4UZ
	 6sjYzpYFPXPBLVFmicq3NKzLIScPhBW6JzxQWQX4oNNxYXZzdGOkLR1O4fcbqbze5i
	 DxgYaskzkzk5TOWn8s7mm+n3Y6c9VObNHG85E+ZjDMa2kJsOm15JPk/YcSst8wmklB
	 lhtvUNyj/UNaW0Z8MEYKyXYWHC+evCZUE2rPgfItg6CFWIO3TSNiSvG2BUKA4+cfhx
	 MyGWQJtMgiI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A173C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761845436.18990.8884285309933923453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d1eccbce458240ca6112c83e64dabb3631cbfa7d660fa13adbbb676530e86e
Date: Sat, 05 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667618454
