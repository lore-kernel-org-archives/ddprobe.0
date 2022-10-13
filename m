Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB7E3205
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DCDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665669653;
	bh=I7s1PIt1KAyTEcFPcwAw9XFu9oF/4+QJa/ZBEDIuBGY=;
	h=To:Subject:From:Date:From;
	b=ZBzK08YoouIF1wY70/gLdbomHkaDKna3rX5UZJl8ra583xi5yB+6IXxoy7qpdW6mb
	 PC/1yUnp3j3rlrS2v8GnZBDW1MAQrPNJT6sCr7OOEmpzFfwHeUCLbTxabfBFqvHqcE
	 qBgYr9Ydgj/kxgT+IA5RCnNiVZcKzES82NNTy11c4gwxrp8Aps1XwG5MK7+VYWfZZk
	 AktO/99tTSor7GHcmZTzs8RELCZmcgzuDJw+vneeraJQmox/2+XyW9pTyOmWvuhxnF
	 IND8awNlMGZHeQZFsN5LyOj+m4b7nYdlddXAMY7VctEsXV4mMhR5HrLKdkz8PuCpfO
	 sra0bRboPPdvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A68C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566965335.372.17647461789961534769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e469857cb6e38ff8ba044e37ada0d2ad8dee210f87f242b88d073038ec37bd
Date: Thu, 13 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665669653
