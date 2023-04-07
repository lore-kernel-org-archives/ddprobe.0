Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9B51FA9
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02A1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680854885;
	bh=O9aaByQSKSmBu2tcpyioEl03yTPUKY9rOp2OnQ36KUI=;
	h=To:Subject:From:Date:From;
	b=RBSzDAWLx4LcIdMblsCd9ffXXDihcqKp9ZtcvIpYKkJI+oE/3EHA7QEe77S6D6qD4
	 ERXf4+48QdvPA+MxEImkRJigd1QKk/re6o36pKqPqcLxG2ZC//F2b+quNqi8/hUstP
	 lkFYbGamGElKmEfJ9R9Sbppoy2BTzArEiCFhI+p/2RwWlgcsrsQjpg+EZF7Vjbmcfj
	 tEcrIMXBlTyxj89bOD5cigw/UJZ1KkIYAhBBXpbEGxMZ6whKAycC+/PP2bRx5/OL6G
	 dFm+QOii7Z2KDRqUqs9j4gy2h60NI2Uze9JU3CXPgCeTLan0GvZc4KJTWKvtpZypOK
	 C9JbpZMluKYnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0790C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085488577.10538.7693476490328756610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67d5d612f3558bedb7c22e4f8d42a4e2367b3a87f21e0e0f1b4c53607aec566
Date: Fri, 07 Apr 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680854885
