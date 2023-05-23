Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA54C7B
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF22C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684852385;
	bh=HYlNtdvLqZXRLro2xx0qQN8gufqUPjS+OtKCWZiyQGk=;
	h=To:Subject:From:Date:From;
	b=ulc3vUoja1mmjnMTuhpt4mLrLOVYIFvMV2fC603ccMClJ/Vb09Jte+pco+mqnJ2AX
	 d6R94WsALUu8EITZnvcIRsvRy1mm8Dk+cilIrB4twRi6FoEliELhKo5+82OQXNg3yX
	 UNTV1FUTJHmzpAgw+t/xpXc7vWBanQq/I1pOf3xxvrWlkCZsC0ns8u5xL0Mn55kKox
	 DKqta5BmGQmgeEZv2Ct+3aXcINpvFqLYedPmXaQ3QfyDdG5+pHFe849X6r4m947gcW
	 hS5TlmqvpIQ5VSUw87aoCMdHfkIha/NUHT9vAhM6kiqDyVoJAzZEN76LlVvgxc/GUP
	 6UPHqMoTlNg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F05C7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168485238580.27936.7921268747768987543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5726c25c094b828230c46a29893b54d039b45b6fb5931c3afaab9fde56ab004c
Date: Tue, 23 May 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684852385
