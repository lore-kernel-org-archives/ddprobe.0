Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621143207
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10788C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674332526;
	bh=F9FZLg7z60ugnWi8e5E0P0VWT72xEia+RkG/7GSEJwk=;
	h=To:Subject:From:Date:From;
	b=Lz9YQIHjsEJbSzGkjPiQR/F6ASIdwoEdqpJSMA+eln861ZyVbRX+K9z2SrbQW4p/I
	 DqV+lrKwZHvJPz6Ke3P98vvyEuq36Fhq/b/4vI7Ej2PkabEsJBJIkdH/HvH/5FU8sT
	 bwp2gzU4AdI3EQDMpwCWqkpFNRC178as1OeoTK7zN13Laz2Ohyo1aGgWFUyQR4MjYV
	 RyWZXlru86OC7Movd0lg/+RBPkvvQtB5QBH2Rr9+qfG76PXXjkQQgHYyLZAgyb9tuZ
	 dzfhL9ij7rKJpTboDxFDG775OEOvqc33ehWefeNEbnP270ETTnJHb4A7QSSAJy9yVt
	 dBOYAWLJM6ykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3FA6C54E94
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167433252592.14505.14882603808127378620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd23046bbaa540ae73300a9e9ca25ee281d88aa3e07fbb518421ce131ac96f7c
Date: Sat, 21 Jan 2023 20:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674332525
