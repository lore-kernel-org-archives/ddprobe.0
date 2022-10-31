Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41ED20F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B173C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667214054;
	bh=aKDedB85qU1cNmoYjPRoj6K27LMeSPjGuwRzHodiuzc=;
	h=To:Subject:From:Date:From;
	b=aIJjuQVQUks4ZjD7SunBhjZxsrmh3IyntZsZpFDVTXbQIEFBFJijXWc2Oqq77iKeO
	 PM745exMOolJBIwprJ/b7/4IKtrHD3kASBkzCS/CcFEnwwGCEIHnZaZqHLyCfL7/u5
	 XpVOFCg3KDaZ6paPxRJeIEIaozlaXyuAG3ESnpow9k2QwhT9GSokn44s1fzIlUgzKd
	 /JI9vT6xNI3ip0FS0pUY5Yl7Whze0D24gkCXlqkuO4f0p2RupFYKFnVWH3XayAg+PN
	 qRguu17XuRWKCAkAZIFTk6pa0aJOq1p7KcYZWreNoLN3dcbEHVesk2DYk2XFmXY+NN
	 2H2yPUZmWhoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64963FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721405440.10844.1215313389459595459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72aaa6b9a4033ccc0dc1085e22cb3e4097d050c1e3ab1163eaf66a13d2548ea9
Date: Mon, 31 Oct 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667214054
