Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DDD320B
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ/ZGfvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 860EFC433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699170496;
	bh=bg8hHLhZIkmFlEp+hBMFifl2QditwXokT/to/QFLdJo=;
	h=To:Subject:From:Date:From;
	b=IZ/ZGfvKsDLeLzP7itst7rDVKviuINVUvJIc7Y15gLFOUmw1PlXvzjsJ57l9mzMpN
	 F1u+o1v1ULUCU52W1G+3ODE4J8cH9NZ3wx1xg+hi8SSQ1YOnRWibPrNkzOx8LI74BH
	 HzsJdhuanb3nbvFlMGwFQtQj3GB/BR67626PLse7huDtwRtQCmtO2+dusgkKmKmRY9
	 Xd9wAo3J1zQdlGH9RJTkS0p/jMqycAi91coJnt2k6Sj/tcgCOYPsB9yQ13SGTo+qQi
	 2zf/lmOEkyDheR31Mn14HG2849CaqXhUVa2kzWE7zeVN8n0MMr8eQaB8Dj6VQD2Ib6
	 F2u8aVwbjxaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6947AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169917049639.30489.3692831074890818205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b581e0371d20a1af56aa5f7e487c23494f891f1fe48dda5e4233fb11dabbdb2
Date: Sun, 05 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699170496
