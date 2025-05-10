Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DD62747B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746861595; cv=none; b=JrzClELBzII+wYv4muT9p+jLh7rfSoYlPSD9q7wrrVksFar+t/VKWyj/ekFVWV7bKuHdF0eFnNxIBg/Fhh7Gi9WleQcI3vaaUrXyUMAMP+NX5jbm1xQAVX8vKc8SJb5GenVYfy09yr0erPV8Jk8urWJ5tZVee8aVFK6EFxlpXJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746861595; c=relaxed/simple;
	bh=x90tFLGxyrHfqCbbD2ZbWdt0H8u0cjvpvt0qA+bkPNQ=;
	h=To:Subject:From:Message-Id:Date; b=kfkhZsYcoVtSkQ1BciUrxIjfGnsiWTH30MI6iX0SncCTSolW2b9SxfvUjBzOASP+PQQvE+JnD6IFDMVgux3eCJ+8Ok3VFm5xVsOKaZ8jofHZtSt+mDeuWrQoLs/v8y6SW29bCOqQMkGB4oetHiq78UHdO9aU496ZkO7hyxy9eoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfVDQV/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfVDQV/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746861593;
	bh=x90tFLGxyrHfqCbbD2ZbWdt0H8u0cjvpvt0qA+bkPNQ=;
	h=To:Subject:From:Date:From;
	b=hfVDQV/rcA5l1mNXZifMyzN++AXCz079nw9h518s3fjZIthkaUWElbebuBZGdU+Y2
	 3z8M+2Fls1Gfecfefs9n5RKPnRXIbdItMoRoZPHMrC9YbEWmIqrY9X/iyy8VKzltA4
	 WxN/asl3GWnB3Q/jVh/cxjiJVe4rLX6Y0bD/ablt1gZ5s3VpuL/cY/aY2Gl3Cg9gsb
	 9bj5ot/au+Gq7lHOFYV6I6SDqx94rf3QXQJ9Y3n5tr13+8qZ2yM5mC7/M/Vz7CvD6T
	 9wgNXqNLHKnPrdz+5jtqDL2BO3a7zUoODitE9e2x28TAvGsSKIQuFr9p4XwCncWZd/
	 RlrymXW+0ixpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216AC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686159357.31557.247644939096128068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600fd351c2b903c9a94e318ba1e67519944692a60524809a2083d3bdac93fec0
Date: Sat, 10 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746861593
