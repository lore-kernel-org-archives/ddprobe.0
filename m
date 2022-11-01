Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24A3631
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FD5C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667293254;
	bh=dA9jsoMDMMUDPBnoahD8vDf3tkhXXnqFyMizCe4UmUE=;
	h=To:Subject:From:Date:From;
	b=NRrkGznEKhbWO4BsK+SpDk7sgUkWoCrXlfnPHj6uZCk/m6yt5McQvTvhXYZaXg3n0
	 kbEO9xhC4grRVSf8JLJzs3p0C4xnc2lHwRe5XmH87uUl7OZ6yp1O8gBb/Pa37Vz1Cp
	 pjQr18ZvE3RJ3l394en/9YXjEeh0ek7PwMv2peVxF90rYlMQZx4/TVzhDeda5wbZ0x
	 BdAGDZJaki+QdutXVUtzTK4Oj7IIOF170zLch9YrJhgk0o4ES/Chuo+wSqOXHnvxJ8
	 MtU2BMvNKeeeokaw9s+oTkilsdkxUdJ7ychQe2kgfSJQk6Nw+vDGcvoT1w1Kr7oPuw
	 KUCog5baOWT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1D1FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729325436.17539.8255429091160622151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5cdc90ba1fa3aa9b3d2f035ef334d9f51ca84a5ebea6fa46a00c259ecc5fef
Date: Tue, 01 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667293254
