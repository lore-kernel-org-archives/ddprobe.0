Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0377A1078B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE36BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690533128;
	bh=02M866olo63k8jA+dR88NmCqf1xwNDSFxcCEYMIgy9g=;
	h=To:Subject:From:Date:From;
	b=MpEgKL+zpSp8nPs+e52xZUBIKQcxIJk3+0CbVaaqQSwMafKRU5t6NZ2+NMLg+3aI8
	 G8fhmUQfVExnH3AyxMCsPLCfWOQdVLWWHVek7UMIZBgrsZeJwHcyMvAlFIBRj12LJO
	 NDa3IH8415CH9JsVko49KwrNFE77+g+JHllJQlGZcJfa6uFTWofW73bbHuqoRVExDS
	 mh7/s3kqbt3bUwLYwzDpLuumCLqlkNPHy8OdJ2kHVN4+CLvYHic8A1Fe8v4axU8Hub
	 LplYRwpeGxBGqO3erWGLqhxG3gCPTzRr86D2+GjCe+y4bnDcky3B/zjppRPisb10Pq
	 8ScF6PUgVGf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E36C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053312871.11885.18068084489096600109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f8a912c64b43c964d0f3ad3231fa5a08bf2fb6f7b26d7e346a898d798dfef7
Date: Fri, 28 Jul 2023 08:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690533128
