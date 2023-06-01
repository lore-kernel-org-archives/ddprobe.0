Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFE121CD8
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 14:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD51C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 14:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685629565;
	bh=lnuHusaInQU2XbwXX41Cff3fg2Z7nHntPpQ0PpXZA2o=;
	h=To:Subject:From:Date:From;
	b=aPiOR+iyR7fT3PN965IWRfyz0xpr55znrDDnz9UFxyzgv0OrTAqxrCAZl9DMEDWW2
	 zn3WaLelM6amj8tbQOXvb3zc1U8YnJ7X8FqKQtVRvGcGCg3eGE/LSpGVyY9bgkr+A9
	 Uh2Ndcessaaf9Gga7kEb2qBAimeIs1BJKW8zC39z0b2SIaznXy7tJPFwNeqZXDZwJM
	 RNg/qWjrVOs1sdo56q2b/VFDv/HySutS55PnOjoTaVALHEDxDkKELSchUI4bUbVjr3
	 tUyyv4iFyj+kKnqFKbN+EPRmIfJ92SwW/4k3IpMNmM82lXXFSJSODnGaoOfJdwCdFJ
	 SjJuiynOkvO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA607C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 14:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168562956575.12427.16495902529494827073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9a0198859e8a1d372da185ec63eb4598ae432c08417f7b6dd3212cbc7a5cfd
Date: Thu, 01 Jun 2023 14:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685629565
