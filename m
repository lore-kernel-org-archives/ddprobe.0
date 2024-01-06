Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105926FA1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlQLRYxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B3A5C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704538696;
	bh=0rnD5+GOJuEgqJdyifOnF2tYkm/ErEIdGygRBz2FHNw=;
	h=To:Subject:From:Date:From;
	b=OlQLRYxQvYiNcqFGWUw+CC0B3vfz+jHo/tgUxM+WU+DECVdFPfbdFUaWymjQ3o+yN
	 uRFIAaTdyh6H2g+NhfhYExYXXSZ6OnV4ik8zCkr2uud2ZJzn/Gi1n+FbPelotzdJYA
	 UZSwzSoi9vbuGgkGde2q6p7p4P2qkGZRNk2eGRS49KC8Ou0/VoCI67lILpmUb9Wfdu
	 P1VT5jxuqXClA0FXiUQeRENz7NFNlsMaOOwZ5deVegBQwL1Mwpm/ycy+h4TgHwpXae
	 DLcsVBHcK8Tgey9HpCvuD1L82WRBPZpfr7UgMnv2mg3aq513/ul4QMhmHrHkald8FL
	 8jk5jSgSo6C0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3D8C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170453869641.12145.16777927202334107812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8828702b2ac095a507bb1b584f5dc5366f9db8fec39cbc358578fa8f08487df8
Date: Sat, 06 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704538696
