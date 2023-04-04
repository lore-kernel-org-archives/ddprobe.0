Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314537C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F7DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680609425;
	bh=nK9WfUdW+D3QJvnuahsBkmNJx1rar4sLohymUVBB3xM=;
	h=To:Subject:From:Date:From;
	b=RQaaPq2r740tncJaCLzDUah+nhD+W0MHbxUcepDLdEYIdWVRRY5MJV35Inu7CL8v0
	 nz+2Qap6gQema7nCuUqBPDVlXhdb1l6QGwldh2rYy+Ayws/JGfIT9lqbGDZlCSyrKl
	 /SyxOHSvCdmvVmMJk81VcoFNb3mMP34OvyaB4eTV/1XVWvuirtSxWqAEge3+Jjlf45
	 eu9yo0q25f16mkru48ne6Ehpp475ZeZ6+vQc1zeGtzyPwFjQ+r0l+ePw1wM+TZQwdQ
	 RZJwSnbakf86H29eU2yD/bWgogIR429w+F7GA+RXS3LY4PHDQB8fusB77J/I2+z9xO
	 tp9aiZAki2iyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA312C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060942575.23842.12561251896938993756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ff8a35391e110e0ca8a9aef6a3a6f2501567f5e6a522821cdac4c457528eed
Date: Tue, 04 Apr 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680609425
