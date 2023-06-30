Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742AB10FB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9865C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688093588;
	bh=8uhs+rLU2k6dARu/c++Sh2ItWR2tJq/LSSMySxttWH0=;
	h=To:Subject:From:Date:From;
	b=INCE0YCbSMwaMjdGWoiACh9/HSeF9VCqhGn6fU5LxohBrCfkotBMDXxSZoxtUbGhm
	 waZnDM94xjDYlWe86uRS5f0n8DcxrGZpOjBTEzrJmgfDZnvXJhAhI1+DVZkSfjPM3o
	 k//qTHHGrHE8PwgO2N8Mp2FdRs/qqkfFbAE2RepXe7F8dN1x/49tlyMHHmxwoazBoW
	 l6iDDK0MXkIiQ+rLzrB68RPGyeZn6JpmFELpcdIWm3vgZ+7F6I3IPycBUq6JJTVjAr
	 n9CVvZcc9bpnxP4t3YDO22IUUu1aqSjhkuzTtMWeM/Nj6t8RzlO1YvAdNYQuJOKiKq
	 twSS1SdZWOCwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82C6EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809358878.25541.4006126315394956719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d12f978b6c98dc6a68924f9b448f0613ad9e7bd660b8d346cabdf95573eb2d
Date: Fri, 30 Jun 2023 02:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688093588
