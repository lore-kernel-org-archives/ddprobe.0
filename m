Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DF431A6B
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phAPywpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB71C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702754296;
	bh=12/V+8pDVubFfS7Mk8amSau0DXD1+VY4Nt+yX+bdyiw=;
	h=To:Subject:From:Date:From;
	b=phAPywpMeYvdUZEEd8Tf9kFhYPiNWKu0u+CZx4TsgYitvj0v6/H6J7K7QyzRMbKgD
	 4yYlJQK2lQceuehTMt3FPtuHyTg/cyKo3NoR+5mS1GrvNR+yrQmuS5ty0Op8uRMrpw
	 Nf1jOanpcPAdApJr7VPZGi773/cMFw3COy7izS6g4MsRwgPdzIVfnWse52u/TLjZEh
	 d9EkwmqM5B51+fX+HHi2SSPCJwKVIga+Yp/t29psPc0Ehtkl55YV1kDquFeq3RjToP
	 EUMLoElF2E3cCeMV0Uk8vLhDvaCdZExiMEkZluTw9lujpQbvd5qhCjeYGsTxKT1LCj
	 AomVHSheH/fVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605F8C41535
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170275429636.5182.3787260040587083029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6a142beb7a02eb731e4be4725c0d82021103f04b32d339365797d6113b5f0d
Date: Sat, 16 Dec 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702754296
