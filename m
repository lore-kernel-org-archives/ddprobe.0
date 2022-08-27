Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C364A28F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD8FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661594452;
	bh=MfBOVOQCO0sCQ1tvn6OIUbFbIZcc8xAWzYj4xFiSCfU=;
	h=To:Subject:From:Date:From;
	b=fcrxxrtzSnfT2fMy+ypqM5K8eYd3MtvFDBkIJPDIAhkpQOsdnmlo8hfpz8jZ0vbI+
	 iggs1Oi63YMmueisTqJmWQfiedNY4T1QZy9zN9nD9EVs3s5aeXpVItLHGyugtuJJG4
	 o9OqhidaD35qKH4vVTBXwSx6eCnQFbtzyljHmmC8Zxr/5Z2c/Ol/Wv33KOA4SWazin
	 mO+FfdnlYL/VkbdfB90aLPTIX/wLZcAFffLGuYM1byFeZM4GzpX0qO08W4cbQU/k9M
	 +qEjOFysBv43/gd6J2eIcCvhZ2pNyQKT+3/SDVGob0oxadpZ/A34L5WWrDmLdHUZ9/
	 9hCbZ7RR4kZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54886ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159445233.13081.6055881597099195962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a255cb934e20b21d0c882bbef3addc4bdfe92df9ae8b447399928962da8cb88
Date: Sat, 27 Aug 2022 10:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661594452
