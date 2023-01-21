Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF0395
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7D6C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674333125;
	bh=qUBPiuESmrln9UEoJKdDbcr+KrayIQGTUF2vHAXY2Rs=;
	h=To:Subject:From:Date:From;
	b=AJbynCSBQ22/CUpRIwQwrJl1mKR+Nr5FbVRC6Ce00LEkdiJTtT96Jz7J+81TcQjHD
	 9/ys/r7eKPxf4OPANr+LSvcq/fe/Ru8Byel3D+Sc9V7lg3xnkcBtV6m86GRbuuKo/A
	 PEPGGR4TVVkNgFZ5sSTKBNtqWpUtOSQ1geckeOI7cIo83vakCTJYfmnse7BWBJYVja
	 fflf3e+iRVFuMzCwUEGR90fhHqJ0XXyz9LCuRHFspqZwwE8wxQDFm99vvdEc1yhVTZ
	 /IrtKU08KfP6/Ewexxuha1U3KSmQF6oYnvn8kB+yKeWCi4J6r/HfBQROoYxh3U/qYp
	 lxESusIua+/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC78AC38142
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167433312573.5840.5371658434122512471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce3590b31ba85c65ba6a7dfd004190a6301c6fa76f2a2d2d5a610f9c51398fd
Date: Sat, 21 Jan 2023 20:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674333125
