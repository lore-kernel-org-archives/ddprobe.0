Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A5198
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 16:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB41C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 16:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675009985;
	bh=AESm5+788ia+Ng/CI2MOhi4gf1r9qPBM88QvPt/YT2A=;
	h=To:Subject:From:Date:From;
	b=CKX5tfZ5+C299snz55ppscoczU3Kpm0f2Y6MHS+7H5ta8XNsSuQMu5SF3VPrz6OWn
	 4QpFOakIEeSZDrRcM5bDerXbeLnP43sIMs2g0gtGWG7cMVB/USYIZ9ZWFNJr6FbIAt
	 Xha0DqmDGxWMijK7A73jkKOlSyFjxa7326Xs4ill7yqHgCQi/O9A9sYFhuIt1brjGl
	 5FqOHTk/DuM50LetVUFACplI20AlsZE7IjCEiWdoWbS4e2h+Uzw5af7KhQHFleLYzJ
	 xoWt+iKFcpC8Lvk1hKeLpoP2O700z174JuNH8bf3UZdwpIH++to8Z2hP8TbwHJehS1
	 FFeks1FUYtXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E9CC61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 16:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167500998572.30301.1413953254027982956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a2a8347bb6da166a0dec1bc50b5d36f4a2cff13b04e42da2afed69bbe51e58
Date: Sun, 29 Jan 2023 16:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675009985
