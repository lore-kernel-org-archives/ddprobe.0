Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA681FA2
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFA8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663746053;
	bh=VowbXXPU+8rL309Qkh3FKgwrf1f8+PaTBtkLPr5M1rU=;
	h=To:Subject:From:Date:From;
	b=IIvW3rTF1iyNOT09oRjXOXw+BdfltIv9ug8LLzohPs8/a6VYyJbGoE9OCdbNHAY3T
	 9WZ5CT05CXkgTMlzaCGgdBZ9Yk6ZJkepOFeignQDF48jALNa8TBt6h25y1AHUeINxK
	 L3DGzvS7L/fkFsQOXU/W2zI7y4TKnwVC1+rg/TUvsfSZqmg8cU8eOhUCcbE5axSYHT
	 S+WSNiMcH1yYHHR+jFWUqhODe2SrQ3NVD8SNW/TSpdac/2XZgdvBlg8L671kLhaILF
	 in49Ml9I3ky6yPlgJ+Kum+niM7HPLuZLtOrvsTfIx5gbngjZAG2GKAqbbIv0lwrIVZ
	 05d+SVYWXeniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52761C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374605333.10645.16112164093840641711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b8d0844b5f64c131909092a9d54934e622ef378874dfd7c6d392efd23d35c7
Date: Wed, 21 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663746053
