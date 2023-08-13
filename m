Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B3564A
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 10:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F2AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691923388;
	bh=xXUu+oEJQlEI6bezOiZ1bprHv439BnE+/cKsNXxAKaU=;
	h=To:Subject:From:Date:From;
	b=XdJ1Z70RqE9cmjdXa8h21eak8HEb6g6Dit2gMXnPfRAOpWySWGSQIfqoI7KOp28zb
	 4+mI6lnR77z5lcJo6F1SuIxWoMwhl0RzRWDLWDtaEKaYK+3/WctpNChuBe3M046P9s
	 qNpPr5uCCXLUjTrxM15ypgmu/VwB6cQLv+0NkoG1/+q4ltuepZuDI7zLFXScK31QQo
	 nqJ6l9O17+4Qt/lvegwGo5zgBA6wuLYoTP/0DRzZ5T4Fof5koy2abFp1KdA6V9pSvh
	 MATYGzJJqQ8NonraR3gn2I9y/MHisLkqa8y3GJ3CmnRfmiSKYmbaWIr1ZR8PQPuKYF
	 bZ2nftAlBt/WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B5EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 10:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169192338868.5386.1499705733477586664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b629645d5693a9365677596e376381c35fbe999dd3150424daa475430cf7013d
Date: Sun, 13 Aug 2023 10:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691923388
