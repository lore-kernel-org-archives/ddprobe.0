Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA9023C0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A97C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673244687;
	bh=kNPNlD5OjyDCcL8wdE+t6nkvC34eDqgweWfwKd6TuRg=;
	h=To:Subject:From:Date:From;
	b=rVCm/TNVpN4ZrYwwwsV1SbKNNfVWe24mY9cpD39nSKxRg7qz8nxEss+igCgbDPOjt
	 Csd8Heg91MZCrtbd+VLY8w1YwNX4b5aLxKJGP5unLXEYymmg1F8Bs1b+hBtGegbOB1
	 ObBsl21Q3uf0NZfWcoAUB+daNrs/cHFOL0uWce0Aw2+WtTbkcqU9gOvG237aiAfX5M
	 IZAfm4VzpQ1s+T6qOhV4kqk+3HT+3Vxklok2uArTbEVABbr7IcnO1/YWdmeY6Nb8YT
	 /QxGxYT0fORJiBZUZlYB426Ipu3cW20yl6iLrkuMUmN7zjh+6x686V6gxoNgzvmDrn
	 CtTcnZZ/Pnjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2E0C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324468742.10627.15936230206219640332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0537333732ba63ab0fd1e7c871a77079f2637644c563f1ef3e0c780938e7ec9a
Date: Mon, 09 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673244687
