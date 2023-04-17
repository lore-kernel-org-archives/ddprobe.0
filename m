Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96192848E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48FC2C433AC
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681751286;
	bh=2bP0ik9Rgb9yxzQJn1iiKR2CmaERRMASVnbUVlSjKqM=;
	h=To:Subject:From:Date:From;
	b=Wwiq1HtGzm7u1t7AnAg8wDkyAaDkCRH7/gUlTDYW/vXT24NqGS7MOvLyHclXhUBp+
	 MWr+6IRoiv90qoN6/0Vxk64X3wXoXmobIKexBhuy2Jx0QmLHVUYUD8FbhoxRytBwvf
	 kj9RoGlqio7nkEknAwHz3WEHqAgZJL4fnmpsLE3x0fZuldro/Z+Ju3vcgoZR6bweNV
	 LtSLca75vEnSLSvTNp2r47J2ABqziL9hGRp8JL7glu2UFR5bAKgFFb16OJE9iujvdS
	 HevxPIB3y7ibPAxN77q1h49HhY/kA53TNNZw1513P8bkBHTuZSU/I11zktYU48dEvU
	 TikJG3s3Q4PCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DF1DC77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:08:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175128611.14363.16546899797079807322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f717ec1e4d275137fde76ce2577b175e1a2de1d9f59697b9544a7215c586f463
Date: Mon, 17 Apr 2023 17:08:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681751286
