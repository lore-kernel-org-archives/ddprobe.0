Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92277E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFA1C433B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662525653;
	bh=76MLLN1PrKPMLqiciLbbH6YgtK/QULKtcnhDaF+R5WY=;
	h=To:Subject:From:Date:From;
	b=CaFs/vlmEut7vZcNQHNfc5i519yjxAxehibHLDkU0Jg5tK6cg6m+CxuL7HW+lkoeB
	 RLEOkH3yQ1B2z584j3uLWItE7XGyJsjXe7JoXJvQChZHUo6FypsKupxpery9t7ldqG
	 M9fz0/qe4nn2lt0uwdad1MEQRf2T6I+WgI+Y1Ii7E3CUP6uAGVLonTqf05bz4VUoKz
	 N0rxYiK3jq6LAqklBtTG4zUIq6Z1a2u5QuHQw+HPMxdvu3eo4ii1tNqozTQGhO1c7+
	 2gHfeo2W3nKYYKjvLzWLRhof6k/1NHnyJ0R4U5EbD8fdz+0r+PkRL78S4tesjaSfmU
	 YEcA50x8Syozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D8FECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166252565332.29407.15298614911750415593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f77d4c1ff20a1d988ae3e5bc8991a736ed97e3d99b65f84974b8734f2557ea
Date: Wed, 07 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662525653
