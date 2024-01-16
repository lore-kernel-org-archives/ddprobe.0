Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DD81CA92
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltRARHOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771ABC433B2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705423096;
	bh=/iQgb4qwsLzL4KKUu35IPJcQxchAQeT/NQ8NFWA+gIA=;
	h=To:Subject:From:Date:From;
	b=ltRARHOeqCqUXtsXEmI46RvlePvVm87XrLTGUCLLzSrXsMNLC3AHc0J6cas+IrKCf
	 XdOIYSZw5X3YHzpMa/sWvkMrblZ54YNnPfu7bhwcvAs21VTXrkx1bxWCeHjTpOaRoE
	 /J90cNzzsoqoxfQXB1BX8HZKj4qpj8ox0iiOxx930i6qJTi0l8w4vpH00AhjYPmw8G
	 u9qG82Dnjrvi52kIfg3hlErovn7FlS01nGBxiZ4PGCnL0c7dIIANqETjpEWMuEzWFm
	 bsSJIMoTzRJ3nbnYB9kBpbtcY3/vvceF+FOOJpqRpxpxsyzVHDbDSe5NLpKB7SjQDB
	 xKWRGCmZK6Xbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D641C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542309637.6221.4380193625401308974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d957153ba6c65d213e08562b62e0517ea339ff52a16227934189738fd0c9285
Date: Tue, 16 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705423096
