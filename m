Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02DE53B4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84199C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671658887;
	bh=a1qN8oH4BK8O3ADiYwtp+kMCuTH6AZUjI/3KtQ2Ax0E=;
	h=To:Subject:From:Date:From;
	b=SMu0kduxDps4WvH8CO0cgBA/9eBrhNnyOJSUadu/iIx+KDEOTJf7S46tiiQ46tSJo
	 Ll/b9WfImTvFMbJtCRVgKa4s1PvjVDDllXf+GyW1PoCocnkVi2MSp+uR3tYgg9u1Bm
	 BSoZ/UqP/1mDwzI5444k//oh3C4Cc8idW4RA3bg0MSPfM+vev9lBCq0zxCCY24zlX7
	 BVxadr9QtnorCqwjFw0pEbm8w/z0Dn0/72F2qfHUagyY2kSTB2Tpy3NgmXf8qs/Kx6
	 0BE2nijhhVtpsddxYv+nKl+PNrSMNwzsSf9//bvoY68yi1eb9LdB2focjjBRjAUbEB
	 sYDuTEWQC7eWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C26C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165888741.30639.2170693769256998073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c74dbe2700471d32ba8b754bb314327263af22916034dceff42011cbd7f9bc
Date: Wed, 21 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671658887
