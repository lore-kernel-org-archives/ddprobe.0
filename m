Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C81813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91475C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670696487;
	bh=LgJ8PjAnUmqSrcpQJw6fiuhhngkm/rdvlr378KM/9JA=;
	h=To:Subject:From:Date:From;
	b=L/nbmNsEYHkmHnUW63naUZ0QtGqtqI8K/+Vgf13T65Kk7NMWlLiJB7TyXC+b2r/A9
	 xknkuF3NvvTj7wOwGKSM5NmtoPSNUnkHbc1ziA7efXa3epG0RA5W8eeMVoJpf9suWd
	 ps/3zdJRjSOKPfIIMJIZH+TR3k1y6cBoD9vJ/tzLUo726mQMIPqEP+k1HdYYjrO2SI
	 V6ml/U/3bdbVTEMXMCqo4mOROznq2HFCDqnsMEzeVFDotAfP3cbSzTDeMY58n1HiJH
	 vb1U2U+5vxcJPNY3GdZ4SiBKUZJcyvD3VGyXV+xmh30zPYp6Uo4a4OgfrBhwAnbUkz
	 FJC/g06Bp75qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72FE6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069648743.16877.16018210620736467217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4229b85505746a8b4f82f26e51fbd79ce4de98173fd73e7c4517204c973a9e9b
Date: Sat, 10 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670696487
