Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6417C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33A3C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681953305;
	bh=TFxSMCK0CeqEl9fkNdpPXF7W3+B9BiadTVmLKC3wrb0=;
	h=To:Subject:From:Date:From;
	b=u9zyN4LSP4QlwXX7n4hevMV7TKsA80bB4bmjXvS5/HSkQlm32GXocAuMCFoh3h/Ar
	 imS2b2R+xAriy/vQjgKORP9FjvUychwtGV0DfqvJ2e2xUMXlTHsf6QKX38to6wyA24
	 35WRufcvdmmRRikHwSQUaRPz55L98sxivpxIzcUk+pJSBLSfkdz/zlAP1sO7R3RjGs
	 U2fszmtYp8YwVdO8fnmvTD8OZ3qEGLS933ROIH3suYolk4JO4P3+AxD+cv3Ok/i1RM
	 ZBfjqzO4INx364CiBb91Y42kUF6Q9RaYVWcekpJnVZdvniO90ZA04M0rwrAQMScYB0
	 qTOtYiuFFoH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE87C77B75
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195330576.27986.3707374791455382860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49e814c5a0154b6128a74c77e8547126c5637d5e2dd0741206117664d33d608
Date: Thu, 20 Apr 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681953305
