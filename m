Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06721367
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7815BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666569053;
	bh=Lt1SdLjtzC9RcZD7jPGHjdLCK12oHI19N2W5Z8G/JGQ=;
	h=To:Subject:From:Date:From;
	b=Ka8mbshJAnX+pT/fvHSK8Q1TewtI+W0G1el4oJt8b6MSaGOxm799ygZ9XDkviCIgl
	 qN6e9G5v+LQ/179/3yvza3cf0ARXp97Ba0/8p0Jdll/w8gUe/tufefnSYujvAJeJ3T
	 SRTDo+m5ckD3Mg5NWdL0fFfkSwZK6juL8O871xrXHii7aQrdHofw46Luheity9BJzF
	 xwvLuYklpnSvpDJzx5QxKy+so8q8H/a2JRSH0kQBookHQ70ogkYylSt/0a18shqe4u
	 IT5o//5bxAr+sio2iu3HN7e0A5YfPff2SKDE8K8UQj7XPGERWmebx2yg3VPaKBp8JI
	 2BKd2DEJRxs4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A97EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166656905333.20951.6830779742279064607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6502bb7fb2bcc7dc9361fe406a0523a54d2996f95e40b7e98306d34e5d74d5
Date: Sun, 23 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666569053
