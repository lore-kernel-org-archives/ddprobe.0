Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA8E1367
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8504CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672061487;
	bh=HRS5yVwJIAWR5V63WhrOsj4zxRZ0N2NAHzlnHOswQCc=;
	h=To:Subject:From:Date:From;
	b=ESU1XgFKplQyvCs7lqRLSsZwGg5S1y8ow4sxywxENgadoOn9GLE5Czb89LEx6iDfz
	 KxVnq3hya0XqbQYeEfjQb8TOpQdv3C1RF+M3lBEE/Vb1ELtjDnN1xqE9npr0LXpEw3
	 ws5ZPBWE0gZvSYswDEWpwosgcqqSLKq4uSt44bkDelvGURLdRn7AUFIlIiL0KXSSfH
	 uO2UB6zCi3HbsSnKdw5DfsKnY5dIAj+gopmkFGqnTafoxz5aw9z9A2dxn5AsTyjY9g
	 478tp7yNyDPaDMFtASzJE1hss0PC5R8x3RWZ8K0JYiTrnqTVbmjI254BFbc5FWIbGU
	 Yr0NS6sEBu2hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698D8C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206148738.8943.12743780397921572347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa89acd07c35c3ad92b296a4ae0e18600d26b5d1c1d472d1c74e9faba017a75
Date: Mon, 26 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672061487
