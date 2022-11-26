Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DAB19F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:00:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEE3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669424455;
	bh=5wrGccUhPgTBI5kpnf4+mnZiOvP116MrX0PnG1xHwNM=;
	h=To:Subject:From:Date:From;
	b=AqNW+Tticy8LjgTu/Kn2wIUDnC5TrYoX5Ulz+2sBRflCjVKxB/BKTVtsxTtjy4Up7
	 2xC36WJS+E4DATFNPka0HkmpxaBjeLXJ7K053upeYNeaopMHfp/15HCDBdUycKVtf2
	 fwpZZHynjsKmkdE/JR4YedTefB8TXPM2qFqcip2hnw+QW3zuWyDw9Am9KrhhjTbgzW
	 mzCoKR+DoYq9BS2EPEw65vk0BHfcCD+lAcqjJpEPxazaJCX14dt8ZvWWVnpOFSYy+Z
	 TMQVcukmIUTq1BCDHNYsfUjM6uNpBk9mTwjHXzIgzVo+vfxIfE9TJ0lR0v7NVeCNas
	 ulBLfju4HNYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F24C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942445433.26836.10395171526845575800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ddad9f9b986fc38acbfe1b6d9ee099005f4cbd46f0c5263044904addfab2dc
Date: Sat, 26 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669424454
