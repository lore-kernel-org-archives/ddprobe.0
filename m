Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCF96D24
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5BFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670614287;
	bh=j5hN3IaWljiqcKKc6E4iXt0NYkEFUK3MwYVpcSSuheQ=;
	h=To:Subject:From:Date:From;
	b=qcGK3zx+d8QMTX0f3jZmNyqokPUlYltGJS2q5yJGLfW8f9FVn7uvFeUOYmJSd1FgC
	 87qqsO6m77p7tj7soNXwIByzdnBbZJiKj1sbsLLwLqJ7ObY6m6XTKREM7R9zzkXvUe
	 FLwufeVocAdnO0f9AhBQSOEYag34oE8W194bzmphRyyXb2c13OBBut4uQJO268eAg9
	 RKLwlmGOf3eAwtEnLicSMHlqrWDI/xdRdDkHmo9YvPX1aKKOPspjNz4EVA6jqJURdx
	 cekMow1SK6uShK/9dxDU9b/w9Tj1bCuNIXqq6EP/AZ7mX9yWeQ8AiZOSSPCwQXTWuF
	 yHUEYdqjXLwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6110FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061428739.7650.6114720903631094462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365fac6760dba0ea40dbc9a03541a346a7575cb21f58ee7c6445ac2d11c35a13
Date: Fri, 09 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670614287
