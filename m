Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBB17E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7FBC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665313853;
	bh=KG4yeKavnR0BxH51fxGClWhFzqFsJOwDAAJCWdGodwA=;
	h=To:Subject:From:Date:From;
	b=VRhJB51C0O6E6QXYNg/vshQNNCofDsfAtiMHF0ijZ2W848ppI1YiQ3pQ1dyYa9vYI
	 2YHLqXZm3ap8JaRzygn0QNue4nymuFtpaUBI2hrauBmWF2KkbGxaJQqXYWqxSkn7W0
	 gOaFsPdPQEzxFy8awtZWjigX8pjoRmKaV5CyndpzQRTMDwaUmfCyfan5yPdtUvppgI
	 rWvmV3jdafU01YGHrEPdubN43fAGDYXQYO0YAdJKFN4JYZc6f6ZyMUPUuGKa5CWEGt
	 y8qdQqC1HomBrDZyeMIiVsJlVbOX+gTFDsp88Tx9pac8eTVW5h9QXVmnJLDmkiokPZ
	 V4YgG86ErfpEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562D6C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531385334.26631.12820598905341415585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b641ae9f9f8e5db74c731b04533b329f7fbf557471b57b4e18da9794775f3b
Date: Sun, 09 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665313853
