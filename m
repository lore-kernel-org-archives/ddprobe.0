Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8A0372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AE3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665820253;
	bh=a7r64QKFPsM9sOLKtZVueT44tDgYcJuVlt73Kt/nEqc=;
	h=To:Subject:From:Date:From;
	b=IuExEjPzj+Ytq/Cni/tUmGU9iAo3D+wG/OFigUnIsN+p2GaK0HjVxYJzCQ+RGZpyf
	 Af7wV1BZDJt4q8wvcctAH2hOBkSQwSI9Ie0KHOh5EUh1lWb6FH/FA9tSbOAqTRvR/Y
	 050e4drr3B5cAS3MwwrHfjrqL4/jywl1Gh7AKUCDlWmy27GvWriMC7AdNajws0ZAza
	 TY01Lgwr/RYaHlONU9EwBIV29dqzcIhj+phxMgAm5q+IpeuzoR6odqDLvp9FhKtQAs
	 OJjgnfbm+Kk5B5P6+WAoggcdUHNSaCNunsSvQKIkR2OXxT74/xUzI1hZjUSb1bHQ81
	 LxyOm2iWo8VIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B38FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582025333.28936.3761619406922980808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ed9f68ab3f0bce5033ac4c4f8a49c69539d8304bb49141c03dc16590983031
Date: Sat, 15 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665820253
