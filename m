Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA39A460
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92BEDC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667936454;
	bh=yn9RNA0aZw/sDZHY9LpMB4dyT+RF8v/AnWMPlJDnGnI=;
	h=To:Subject:From:Date:From;
	b=GPjckUpXDqCsZypcFPllu5MD9D+pGjn4E9CKxFv5FQrhmUF4gfZvQ1BQEIkzY09py
	 4IqCeE/wRzpu9OGHVNgsdsWCDjezhvq6r3HQAbSg19+Zzbx5q8znXVltw0iuRTbq+S
	 JOgMuydcn0sQrZmtDoXt5lunVfXJSK7cIzzcKR3ffBqd0c2G9MA3fJcnkgA5jktkd4
	 1KuY8+NDczrFyS3436H7EMau8hhR2DhGYOMWURPVmjTE77MF+i4jULm97RVPyZ0w/P
	 nXeZOD9tqftk6o1Se86TuJWomefslLZ1w0ujGoUa0S2067x2su0Z4q134p2mOFBo6R
	 fpalKe7eBU/vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F508C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793645444.18537.17669629675166524717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b517d7169dd612dce0f6bbb415ba46e00b1fbf7935b5a6ab9fc4c2675c51adc7
Date: Tue, 08 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667936454
