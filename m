Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594396AC2
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCB5C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691495588;
	bh=sBjEU/cBXFIArIkSjrzNAhKjgpZBxT2XS1yV53jfXwc=;
	h=To:Subject:From:Date:From;
	b=W7zRGVb0bDvdeB6jDynb7fJ+ZEDrmbEFxcdX6miQhoc7zR69QZpHrz2dc/hyXf+nv
	 yPFIzsBLgTEd/5dw6pMmAV7waNxFuB5qGLh/F6rz3sLZ36vxAghBNJPJDSUwC+fgO9
	 tnFhOvPFT0VT5PVq/qi17LhDQubZMB4EN/GC596ow9ovuJjm3kZxiWiCaY6aGsgSHg
	 Muqx9m349lBADs7QYQFBGgL3NtkdMtCtn496/2hZGHsN2yr0r3ziVt3HFGH/xJiBvF
	 zsnfagxhD0AUw2BHSGmOfbo7jQgVjC7gzLjOka6bYTigCeeEq7wUitvuhgF9Mk3Qm8
	 RDFhyehL3NUMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFC0C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169149558874.24193.4900501732586424350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff9979ff91ed9d03d9710278d12c81860c685fb76e58402b48b1214e6951804
Date: Tue, 08 Aug 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691495588
