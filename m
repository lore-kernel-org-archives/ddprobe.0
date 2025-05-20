Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B7379CF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747711794; cv=none; b=kmajDQMRQX0VqlN835OzSrn4U8DwXOwfKnbZ9FspDxiVEckIO09jdgwbfTDv+l6ySspBT2I+7NolwcM03OLSQup/tt4yUZ3SLuGLTDXIqYi+Eaeq/+/2LBKBfYfM9iSkR3O/Gfb96Au+UIP3Qeg4fuqr5z4OPSEXXSREqmtj5XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747711794; c=relaxed/simple;
	bh=STErdYccX7qpf6Cpl1Hvo2CNRIDCiasTF9/W3XKE1rY=;
	h=To:Subject:From:Message-Id:Date; b=t2ULAIUeu2WfdNel+RarDhPGGrM5i82q8mksTh5wNXVcsPdyxc1nnl8J+XfMIZC18cD4EIR/kBsgbkGLxDxh0GPu4i444y+j1G/2/Pi9twBIIlWYd4GZ4LXLWPdDfTXQPRJflTdG4b4GxOhidRlk2byMChKTQoBin3urhegm6Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxbC5pET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxbC5pET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B36C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747711793;
	bh=STErdYccX7qpf6Cpl1Hvo2CNRIDCiasTF9/W3XKE1rY=;
	h=To:Subject:From:Date:From;
	b=RxbC5pETK9oDrX/F+hLiEdj4I4YxvBHV9KcqdtktWCy8KKSxvHieM+YABp7FLIC8x
	 W+VRDT3zOOQBjE80FGGDZENEG8MxlPW2TAWuM0b2WZDbp6SGd7Y3pp/d7T0TkvzNsT
	 Iq+09Uqnry6FI9rUhhcxnXwWU0/pwdV8aJEBc/NDr2SZK8D7ZjUn6PdPe6PVK8+119
	 OfrCNZTiDPxD3fm4ZROXKxGjvFj4IoMeLoYALW9/Gb9HE2MuHjP7ZE/yGMYmTzwsDH
	 p9jlx6zrOQibs0mBYLUvPQIZRS5HwRG1xByLeEiCIzgWdgD8INbNwoESjvzNI30YTK
	 Yy+VesMYTbPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F083C54756
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771179357.21120.75081798729542818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e767bdafbc26f4cedd20af13b71db153b14c62c9648d78b8c4b0489b42df15
Date: Tue, 20 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747711793
