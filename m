Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2B230641
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHVPR/by"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAF3C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702738696;
	bh=MdDwiwBFf7HlwnCry+Hl+Y22VmKGTluUjfUFvc1VM7k=;
	h=To:Subject:From:Date:From;
	b=cHVPR/bycOHbk7pRmCjNHyfq/qHpzNoh7KR44iNtjC35i1LfhCMYZgidzsri2Zhgo
	 P5TiBRZQcRDwVjQFvbS5UrbjRq/QTlureuqJhSrKXEu+a7lfCXd71EgwT29AebFv7a
	 3NIEUqEAyc3W3/g4X2H06euhke/j8OfVl4B3C7VJke0PHcevRu7XYcz+RhIdKWC57F
	 DIobTiw0Xp3YpKYJovPnDwCCPO+aYM7nOuBUE+M9pzPTSDhLuLL+gY30WMt5b5YI8a
	 eItwFjwwtX05zTbZ31yifMXrHaMLph6n39nFdS5a8cAZBejkKcLYpz0koANs5mi2Nk
	 q/8wtSCkTY9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BCEC46CCD
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170273869637.4326.8592349307588063717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4e31c0a10d368aa260e50adcd3e5f8143f3cd7cdb05ca304fdae0a71102b42
Date: Sat, 16 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702738696
