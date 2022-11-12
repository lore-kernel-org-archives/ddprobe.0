Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC54A4A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F8C0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668258654;
	bh=JsALYBmwUQFjumXxYhVrUIq0v9CCS5ZOTlqUxK+KPxY=;
	h=To:Subject:From:Date:From;
	b=jkgegPNcdIPRi1q+FdR7BPQVJ+goNbjEZ2cUygrpfya/ylj5AuWjOtqM1TtAcPPCD
	 H8ITeDTqI0VcuMc1v/AWwFDxm/tTcv7zia2oNcl0YIW2OzVIAjVozosaFOZcnvh1WR
	 dA5aW/UiMcNytQk/05R/cgha2PdUpwg6Dlv4bQtY5+w+9CckfN/6PHiyaii4+v3x5g
	 iSL8wxEPd5klEwSaYzAG+7WfJNK47w8QccLTKhpAZzajJt7w9sTxu1XnFEdkz46lFn
	 313W7TsNj5OM2lriQ27DTFH1JQwnlT2MBD8xmJLhU+8d86LwPb5HefF3oQLYRqhHYr
	 qd2goMOIUjIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66119C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825865440.11457.10955468385657977621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e688395aee06e7c7ac0cb3a9df14e841f6aa19d5a63685be47a566da44a03eb
Date: Sat, 12 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668258654
