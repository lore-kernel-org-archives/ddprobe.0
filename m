Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D940714AAF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0907C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689033428;
	bh=wbdoosBy3kXrvrmR7txoZUqWpMpL9vB02bUC83s2/YE=;
	h=To:Subject:From:Date:From;
	b=Q02Uw2vWgPpUR5RzpAxAlKZxeERFWeS8swY86AybCytSsIo3jriCa7mHS5MkuO+Vu
	 +oA/ey/1qGOI/vtlzWPODa6dFBA94DG3dQNOuLIoy1hO9HCbJopFgplBp8WufgY8it
	 SGOKaiG3Q+BBd0ChhSiU3tDKXmnea6dFcFkZ77wwKw3D387y5n4rknk8nR7rTh2uCH
	 zUse8Q9/mQJBPFrUdKGxO+8RnRUPAFJ6GI7pPe8mkK1SuvZPqp92X0hm98xRp9QJIm
	 +UQhUbIsvuVC9czPTwuYmfm5xWCVjiryYILcP8iqufgcoR6k6WIXjt4gA1duL5WWFq
	 lBAQFHQ9/9Rew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23ECEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903342871.24147.8981571126867636864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cd63799b2b2c837f7b59d7ccebfe3a2ede04d33accffcaf46f6cc9cf3d46eb
Date: Mon, 10 Jul 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689033428
