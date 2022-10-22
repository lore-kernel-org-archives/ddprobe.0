Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF81D33DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FB9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666446053;
	bh=NSXli4pAUZu1+6PXT4nCnPPuFoPqiV0Y9NwmNFWxx4E=;
	h=To:Subject:From:Date:From;
	b=HSf7gJPt1w4cenFhfekIqvIfzaArQZWx2TGvl4Yc5InL21DJUxu2lqk0SDZzQWfuD
	 ZyEqimcMVLqHeiU1f7yV5rRS9hPBDtEX2EFmsmJisLjKoNdCbP0kpRC93R+ZtembBW
	 gcWSzW84pkZgkmIYqX4k24wj/G77qLOaDnVBn8Xh2tNyGzd5ssynLmWU9Gcs21TeAv
	 JOgPYu8qVxiF4enhsCxa9HIJhjpjcSMlwscP4dsPPYgjxbbPfPR6wZH+bLg956wh9t
	 WZNq4qC+qybuKLjZiaWgIFK2SwfA1G/xzec5fYHyXpe7FCLXUZN9HjmzIoxslYYVcC
	 XV5KoF14Coswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53443C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644605333.1833.11384864858102944678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47912cdc2085a950714848455f431cec5edadc211ff742aa8fee959cc7965881
Date: Sat, 22 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666446053
