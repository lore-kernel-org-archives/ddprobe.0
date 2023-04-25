Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABDD7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 05:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB03C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 05:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682399706;
	bh=TLIzQzcPGQWsZz2Nup/fT3Vh9Y8Stn0yFHwiTPvr1VY=;
	h=To:Subject:From:Date:From;
	b=g7v9Qx8GmdY2tqhcZ5TPD1qFOWj84Zmk2mh/YwQUzrs8zQUgir6knWtttuZLRxEKr
	 Vu9PcRdpOuc3Vsmt9TfDPE7W1zKjiQDLe0Ctmbofhc9YzZuM5E6ZTrl1x3Za6PGhrQ
	 YjXdWOPCPWAJfGgbah0QSt8hhzMWEv9RsxR19GFJfSXS0k9MZgA+T46bTbRfz3nmbX
	 CcI87c+YRgxSoFVs9ibKJbnSPQyGAUqRJ4alDDviPFAcSZAV3LqtaVS85o9Puxzpgi
	 fSw37745+ukcj+RQRR8feO10JgMMXLqKSFFrEDY5T92bKmaAowwCTlXNolvPN1NsdJ
	 5jy3ZnEUS+h8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDF0C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 05:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168239970583.14545.983405724832896571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e77657e557b0348bc3a5e4857432b86be995266eef5173d8281d6265d41b69
Date: Tue, 25 Apr 2023 05:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682399705
