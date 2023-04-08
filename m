Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4215FC2F2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 10:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E489FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 10:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680949265;
	bh=9kFjJTHnGD4MOxdvH0bOueDJGJaioAf53vQlejjDBG4=;
	h=To:Subject:From:Date:From;
	b=KO6vYufxfGE1DUWJFfqmDK3Ic9GKyWcG+GVBZ18+zXKuT3096d7bLjYN2jbsbEdv+
	 BB0crpvavWzc5jYPYmeg5uZqG2Zp1BaeMSPhxWb4ElYQWtaZE8+j7Vz+qmwO0F94ra
	 BjCkmieZZKSjWwK+dp8XrlVyC6Yd5IHanV6wLvNYsyk44Uxfdemv1iLe4uXaQUgeUz
	 9olX6nfja/KGMvLmx/7Nvp+xSpswKBnZr7MCyFj87KvL/SI6y7HeFeyRO9lSClFcmD
	 PvNOxMwUSZAEeHfjGR8Hego7iI+3lN+wUAoaJP5kuqw0B97Gfftp5Wk85/9zI+G37n
	 lCr5xHhXmBKnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57A1C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 10:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168094926579.26312.7284535975598571736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b9cf5d9defba7ab6bbd197555efc71056c32df5fd8f9736f7c9af0fd4ee9a8
Date: Sat, 08 Apr 2023 10:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680949265
