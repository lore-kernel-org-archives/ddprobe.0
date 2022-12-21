Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06821FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C67C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671608487;
	bh=aNpP5DBvygtiSLUECEfMdxwwiFFSpg8E02kJGf3tNkw=;
	h=To:Subject:From:Date:From;
	b=deiJ08IVDe02oDNbo9CCrIsJkFQThciurLhmTu8Mw4wTP/H4vTto0a4BRw0o86EP8
	 RZJvvncjSJJ4WRgc7QBnU5H9WHpJ6Zo5F0v6xqXw9BVB1ayt9wh5dRT7x2hdCtNU8B
	 HtS6BCJdMLEvpkBRyLeLmLQhufbXlOo2ez3U4xdGjjWYn7jzrBBJFC67bpX3wAL0g7
	 QLaVupizFakfyuEe74qbU6yZlNAFSbVW1+8VoESSpj7VdjilGm6I0UbOal0oRjvujx
	 enSc49HPpbVoA6IY+EPdo49P6AJrGSCR/0QphOxPurtl/IeO+Szjnyc4VeOrv82fxw
	 PVw2wzCNSEyQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D371C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160848737.9121.14798520139827961319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d91e1d71fd99b65c18be5b2d94360aac268743be7974b53bc7b648ce1ebf9f1
Date: Wed, 21 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671608487
