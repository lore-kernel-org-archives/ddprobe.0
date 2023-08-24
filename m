Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A69288F2
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74C6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692880449;
	bh=BPi7V4ijdSW3F5Azsx7VFOvlz0UkUUQqvnt/2z3+edg=;
	h=To:Subject:From:Date:From;
	b=mD++s164VJJdjdJO7C6jeyUzIeCsZkN7RqjYjWDBlQNhkBXVjWfzeaBnOUT6FapzA
	 HpL/vMuK8LytelmxpqNe0qVIH7W2DXn/4ObwGvZWn8zuhT/UiNrVFxCJslwvo4wM58
	 rrd2XADxt3lzWYNDyp3HChjVtN51BvgPjPYI/JrUEcQl/WiBWq+79+GDiZNRtUuF1I
	 u/gJI4UiwrJi/Ghdaf+U8/jAGCngCc5TbNdzTyLnLW5JPOvuU+ax7kgUB9a7s+0YjU
	 Zh5C0DtL7LHTqYjc7Pv+DYehzmdsXaYhrCuldAJJ0E/r4M7PQy2dp/ruxwgjW3lfq6
	 lQqQcRW/JhRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A987BC6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169288044868.4891.11211624456914615077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1328f420d502b75fa8e170ad0bc0b1ea76e83ecb0762e2280fbc36b47c599904
Date: Thu, 24 Aug 2023 12:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692880448
