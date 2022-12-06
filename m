Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8821844
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67268C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670300454;
	bh=PAw0lxvZfoi6uq2jbZrpuDdvJacFfZKwZLD4ytIZJC4=;
	h=To:Subject:From:Date:From;
	b=bDnQukZKfZIDvdoyV2mQrwee1L8bwRHEIbHgO48gvuVDlhialg1yQVXmkMSXPylgh
	 djrwwoxWCblhC3dtcK661hdjj9Bt9T//tb09hAbNHrXoIeFpOdQu7fGPN/XPQhBjsy
	 vAr5tXtmqYKWTVY8ClE0AW9f/0q1IP1vgVf96tj6Bua0FXfdQZagYR+cAJvuS1EtnX
	 llo/3dDmnQ+BGYoeMs+ZVdT8AUaro5opLEXYeuJYD0+yMPHUW28TJ5litMiuQ++TsN
	 maq4ttyoKCE0a9c6KvQzF+qFGJ5Tc9g3GLEhFdC5X9Y/S2pOeXbbeaOZUK7r90Thqd
	 GZfzyyimfr/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C5CC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030045432.12602.15461343942984384501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d414b27ed63aff60e8ac43790c7d48e302706925158216b29156f291a21037
Date: Tue, 06 Dec 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670300454
