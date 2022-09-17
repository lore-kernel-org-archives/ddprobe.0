Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2354443A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A416C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663444853;
	bh=SnSTCutqMM4fnvGRO5rKWrTdbTPkDubg/2sQ0e7uBZQ=;
	h=To:Subject:From:Date:From;
	b=WYu5SPdH9tWqXmYX7aOfeunj4w40Jh2ZgDrLpPhElcV/+AagLCwcTrBooSWOiJAp7
	 42a6k3w/oGBhqs6Hev/0o2ZqDhP6OBg9UaA5UypW6386uE+sDBATzL8t8Ft0p6YYb2
	 MtMhGAXrAEyjc56Qq2NMnfD7R6bM+QomeIeYAxVHD2UtfIfCNNx3gmwgeZoq9qk3Fn
	 TeMdnaReEHda1cdsORF4VBXTt4B16VLUujuCpMMMD5OvJUB29Q3YT7AhTFHAv4UhNM
	 T+iVQOHFb9D9b/1aSE3kmeSwECExBhg9WrAFdR+k1h+1l98Eif1WHHafnq3x8Ygq6L
	 aQpYVUn2uf6wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAF3ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344485333.28742.4081422091708065337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de56819a296e574964cf08a2f672f37bafd83f9ae280527318954159b980289
Date: Sat, 17 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663444853
