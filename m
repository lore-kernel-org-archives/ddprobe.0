Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78AE17F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DF4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672693887;
	bh=hg5j9r1CBKpdn3pkaMyYWwbpzTYMUPwXImHpdPwWA9s=;
	h=To:Subject:From:Date:From;
	b=MhWq00TcPrT5nG576t4ebNTrvaxFRAa2PFKdRpRIQtvbjpmVtuKx9AimsTkrETf4x
	 21ixgYzm87H/kU0i4SPPsxnLYtgDEsETmBG8eyrwZGegPttlU56YltdiQOo4qorbR4
	 nKeE0XHvKCkRHn7t1QDUDlfnFAYi64PsiFBfCADoq3Q3SFE4ttfdavXZ2TcgL/f6cN
	 RxQRxv94/QlEf3HtIws9GkHBfwOP5GvRKTZwsC70kMNpbAbS5bYzNTMcame18iyK8x
	 /o3d4y1yok2M7O19Gt+TdWpzE3yZoPdZBhHODGA97+akTxc4gXVWSD9jMAAn+rSg4l
	 HYFqIXAyb5qAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640A4C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269388740.2043.1061494340743389580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f754bda5db71969b4860336f31ae8fefbdff6cd5cf3e11fa07914a83b649631e
Date: Mon, 02 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672693887
