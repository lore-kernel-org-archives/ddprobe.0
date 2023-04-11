Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6952F21
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65B4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681251725;
	bh=PNQKqNOmhwQ34LtZLq4/TOyqz/msJBOxsfwws0gtKMo=;
	h=To:Subject:From:Date:From;
	b=aN0Pr0485v67Zf3rXEJuXcp/0synQwlryl+1wQS2DoGJz5kBIQdSOLav2oydrS1WH
	 XkJIp6mknIoh++mQC0quo6btb5rjnsQ83QkeuFDTFUOywJxl1YgM0T7/qffQ9uINyU
	 EcqXD9abOKKoj+RwYQE7NhGCWyblAca3GytGvXDe/Tly9LlFnMWrhSv60FPXsEwcb5
	 1ZAaMPmWAhhpgiejaWor6ezF8TQo1P7w+AUn+i2yqnU5ISRTYFPToHTF7Xad/fwfRw
	 tJTcnMNHXqg+FEPMF+ZS/VcI/f4eHpiRdB1LcYo85Ax/VWQoLI2HR1cOi+ZKis+Lgf
	 d1Lm723TSzxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2FAC7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168125172577.2674.1498801121067626277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49510f2e7e0de47a33602eff584586dc743cfe48981e61a962076a87a4c850c0
Date: Tue, 11 Apr 2023 22:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681251725
