Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B97A23
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE69C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672971087;
	bh=xEAO9C7ykiPBybsiaaWxXJdxFx8O+9zyErYMc1UuI08=;
	h=To:Subject:From:Date:From;
	b=BDUa0vniwQz95G6272VsI6IZMdr9Iv9TdumcDORsI/LGy0fB3gupWn00FkV+A/pDm
	 qDTI/9/c2f0110PdFPddbwN7f6TgJlO5ri/o1GtZbWVaiz0P3AuGmYTjVXg+MyJKy7
	 hjzOZqZwpLTXictWW19k4FsqpoLtVQf3bb7dh1qKEs6Wy3wXbAaGWivHaiSaNEm/0U
	 w/WmUpHdSGFVIPos0DGWCcNPycozos5HhNwvzxh356Qoa03hxhZ/BCjlrHZiq0Q0YU
	 XO6Wf1teE7YYFhjE5rgxWsxDpKGL7i8iSQ4swHcjSK59ZdMscgPgmViNCoz3q/wHyn
	 N8opZlFcFXsGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F90C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297108742.12982.1088620927100843512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771090454ac648a94a871392dbf28c2b673a96a944a76385fa2fd848c6fdee7b
Date: Fri, 06 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672971087
