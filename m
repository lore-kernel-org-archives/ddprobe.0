Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60AC15A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7040EC433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661571052;
	bh=tXUsPKygEaEbfVWw9MFoLfrXV2zmV7NS2RyDuuT/Xu0=;
	h=To:Subject:From:Date:From;
	b=iofosLEwnc6di/TowsxwZPfG9YREVhx5zbTcYeks98t9YA/LCKg5wn8IDzUIKtp3o
	 pdpmz2kMZOxBzHEvjCi47LzOpnZ0XhYbOGNCr/4sd6qh4NStxrZuOdKZq4fU+aW4zB
	 c0mHXqZLcfgQ6rdlbv43ih68TmzAniL8oQUv7w4pvh8Lf5fFusDiTkg3ekhfxLAXy/
	 O+D0ZR1sfSo9Mx+apM8HjV8xq35HiqPGqWpxiuAhrCb1kOCFlACVxWnvjjE4L37JGd
	 7DR+r9YYt4qd6A5wKdHjBYUDB1EXvesBrxhVgtdENESvHqb2/7G+c9CjqB/UCetM56
	 Pc3h/InFZf5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EB5ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157105235.28834.3338786400603388740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74237a023ecf9cced40ceea005f811a44a89c81b9f039026fbf14537b85ac928
Date: Sat, 27 Aug 2022 03:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661571052
