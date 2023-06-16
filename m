Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C4D3D62
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D110BC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686927548;
	bh=qtri88myNNR5rqvhRzVhJN8zo6AhixOXggk3XMmFWOE=;
	h=To:Subject:From:Date:From;
	b=ow1sSsmBrUJJVpYSB5Uuv0ZCRmgVPE6bzAmpbcvlTLmFEeX9j7Pz/VJULXY9k/apE
	 dU/Moy57Vs+9umObVPEaIQ9+Wj1jL89lu4y1/TDVnvUHG7sy9m6dwHC4AKooXZZjGF
	 A/TFmBsy0sgfD8GomIJUg/EwX+cWopQiLqhfbz0JeU3kMgasTEP+5JwqdDkTeZs1qo
	 bCAT/TXtiH+3LnEIfrykRnCk40tFKKaEJLVNSEbuyQY9EA3i1EIMh1t9erJ9j9y/gD
	 qfXRIumbGk2TwAOCuxBJIKN56M9MgcuvMGIoUc1VtKPwN27N3YQTIW1xxh3TLwsLJt
	 fx5RXnO76g64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D2EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692754869.30051.6494480933581687220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a54ad618f99e04c9b7f696df410bf0d59c47e94d738d7bf3313f9181446b11
Date: Fri, 16 Jun 2023 14:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686927548
