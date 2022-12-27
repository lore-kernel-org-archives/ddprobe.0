Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D287ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D03EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672110687;
	bh=MTw2nhR2vQKgngKFRltLpXq0Do4/r2Cf619zdlJ7Ojg=;
	h=To:Subject:From:Date:From;
	b=Kd9xGX61znzvC9z1yJn45DN6n8OwYXqyO+NUa7R3WrIYz4+JNgiI8LBTd1XcCpZkx
	 UKWtJmEKHhBzF9xG7keVUtub40Y/TqyBmNzkANkduHOPlqB0h12MVe+SmTkpCtcDoM
	 w6ITC+LkQ84ew71psV+Q7EyZ92lb0oq3iKt2BpPTrOMHrev8tv/CUV86rBoxp7m3NS
	 L0xNpJX6NJU6mYqfes6717UOlqaKRMCj3FjJ5rtv/aq7TighQzgftYvesy9SXJUHND
	 OfgLZY02B34ixLP7hjeDr4DHF07kWaJAROjMODxlN0DlxOj5IVJ+gTFnUJLBh6R/5k
	 EglrV+xHjhj4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DDAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211068738.31481.17217836634161219458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec042da081bf7a4f20428510d2b4ac56b3eb2051174dbc25d01675a346f6ee5
Date: Tue, 27 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672110687
