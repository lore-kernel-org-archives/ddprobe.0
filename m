Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FB73788C
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FV6mTn3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78873C433CB
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702904896;
	bh=gbdFO7EE3NWG73HFIGfbvGVvTceCwQrsCqz0FLYOG7Y=;
	h=To:Subject:From:Date:From;
	b=FV6mTn3jCiHAwz15HfZjpc6bZiOZ+wzt0YX7xCVn/vuxSnGu/49fTk1vsw2Mo8LW1
	 oUwFaoxbIYrx94nQIlUFpDwQ33WEhkSmz2JkAnu2dqm4fU3kLP9fPF34gBaFNwPXyO
	 DNIt6/B8aRSKacTZP8Y1wAVNOJa4D5ENGwJkc6fNVBegSvnfqMIHTReGGv2Kt83Wy9
	 IdKA0bBbW9ksoj96EJ4jL992u8YjAUNt2lUv5fe6maz8ylcb6moM3ZuduUY7lPnHS1
	 XqLAPjxzrBNs5yizvP9moo+UoNweBkHVoMKiRas1yD9Q9tN6F9fWPou1GbbweJJPmy
	 PHNJ+koXpPZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4FFC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290489638.16636.12361061049340250506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a309ea55c4d371ec7b4cd8052a7e7cc8b4c0d1a688ba53e6666d43ff8dee26
Date: Mon, 18 Dec 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702904896
