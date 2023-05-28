Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3F2109
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 16:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25C2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 16:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685293145;
	bh=Mfx3EOY+yVEzs4rTbSzfVX8PaEYgt5U0T7eYzTtxqO8=;
	h=To:Subject:From:Date:From;
	b=GLAWTAcfdnWmsOhkyavr1pGae6+535RUdu7C4C07HRDeHSmuAPuWxR15KKXUjhOrS
	 kfYJlt5D09UXAVhCRy2/OS4B7vmBd+Ix6kaHSvfmkQlg41MuxoyiD9rz2s68hYncsv
	 mUZsHthlyvjxBLgeMPzW0VPEHuMPDJsAtXKc8JklwcJVMSYB2ivURFZvStsxbZigIP
	 XLkDVhp9kVqKWpSNO3aPsreY8XIEmkM4owJ61zQ387jvmhlPhPeuLBMHTaMRh1bwd/
	 68Do9crU+rqG82+lmqtZZCOLtDRAyOKoBKRc6vfENxbPv4hJsG7yELr7dc0wGsMXGL
	 OLzIvjgMZ1NKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C890EC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 16:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168529314581.22080.4518697228441975198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc07e55097e05fe35f4f24ca6371b9852f44b9097630723ff34bed0414e7468a
Date: Sun, 28 May 2023 16:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685293145
