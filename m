Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5213FB00
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZznLfVQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89002C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698449296;
	bh=siXFQ1tJBicEOksUil3g32WuoQU4iIBfH/t3NSj+1DM=;
	h=To:Subject:From:Date:From;
	b=ZznLfVQh2ZsBtojAwpNAoti2NFyu78agVa8PWY5tMFjT4H/RKq5hyAYh0IyjDAGGw
	 5gmaoqTdiKJS+BvSBmT2fHc4VQUujZI+1j5/dEIJgpV4rzo3dbHlEd5r+Vx6PoE1pi
	 EZRusTFRsjxYu1pBe92rkF06F49p127oJmsv35mI0ErHflb6yiNjkGbGFPNkRziOoq
	 nqUI51dudaaVfVGZT1ICblvMtByUXllwTnGU2tuuiyGOuOq72uSWy39MUAqzvHAPCa
	 VOAORoTB15yUQlRMtAhD4rGqYA6l9FNZFSEEzzkCUpZZ/2oK3cQ74R8/X3O/z2MbYP
	 LrjrXtJwGGFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2B5C27C47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169844929642.13711.3186703794006013360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72372bc6ed0321bd2c31e16d2402ca79903c6082307cb09b7520f6ccce3177c1
Date: Fri, 27 Oct 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698449296
