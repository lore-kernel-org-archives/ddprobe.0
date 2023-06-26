Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605AD628
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA95CC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687740788;
	bh=MzoGc4bADXG8oufuzXhUhlIVSYzHh5pwk87fJieV19I=;
	h=To:Subject:From:Date:From;
	b=MKJSLyIvPrwQOC/YK0VqgZ8gmuHCcS7nIzJPjSTo/SLtA9U6Nmg+j0UY4AK4v5Z9A
	 Z8b1nTcbrhDEbqoucU8p5CR3gh9Z9RkCmZH7WFLXO+erLHCH2lnv1+on0AIzciiVDJ
	 vKM+j5JPvVh2cJIvHNupxBLjaIEpsf90saFXqg544YZ1OGVD5/0CaUhrepwnFo3eYZ
	 4Wx0gYctHiJniAmVTjRjkCFHAxpZ+yHfDqp9W6m1v5mc295xBbicNBwxiKC0NDJuYK
	 nNaYjQo0ZTzw7tKN72o6YWMyZDJbmAqyt85ch7/99w15zTWoVic6CP89f3+U4JdITE
	 FtIRKmXmIMtIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A892DEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168774078868.11187.2050135252547000911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29302ff5e4a354224cd9634bd25c9c7a49716ff3f5f26367a81fe30825a5852f
Date: Mon, 26 Jun 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687740788
