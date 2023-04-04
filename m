Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CF56AB8
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD46C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680614225;
	bh=TdyDEGxJUy807ppRjqHEPCj0ULGCUqhNHBK/ZUVYOnU=;
	h=To:Subject:From:Date:From;
	b=Mq9bKAcNlTYsxR+lizdkWns4YMBS/SrpX2ZDFx3FvoTKDgzE3Bt+V2lDyqboEBFYy
	 a5JEbBJlOjW/H3AxswIWRAksKhTIv7AOsbAsLQ8Thf/ZCmFblAhe8nSr6ybgB7MiMw
	 NZUsS2AAIKk7iHRdefa5vAcs8bN6ZIDs4KS2BNqvwxFgHpDhuWVbXyq2Kees/rEmwA
	 QM/37gBcGNy00XRVSuLJp83Fz73QS5gfgOm4FBSw6APRFmqp6Nw/bOD/96jU/U5lVx
	 gL1w1dVGX0miEHCmXDw2XeZ1YkZmdEFiZ4lwjQjTnaiPsdVq4YtMphW9E4N/UZxEuU
	 sXcHKU7O7OPLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C439DC6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061422579.25785.72191813627992896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe8209d5031f08a944cb40a6fa6a09043126a8800479ac909de216ab50d5443
Date: Tue, 04 Apr 2023 13:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680614225
