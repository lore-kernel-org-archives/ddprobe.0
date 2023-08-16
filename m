Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61888182C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 21:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD04C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692222188;
	bh=Xr3ReBky8SQjJw2MBB00R+N3SPbJl8wlw5eH8DXnD54=;
	h=To:Subject:From:Date:From;
	b=ozNHnnSnRIfarceH+EM7o4iveyrr2OBZUju3QdPhyiRpAYEejBf7tkdxuqGzXx4pK
	 0SOmORpt42xU9AstGwKcwQ+OZKij8gTMVHbg+XVnjwr7g6rU1B8sLv+BJY2WZ6iKNV
	 LxM+BQl5sEuKykVH1l06L47Xg42vcMJoKfGk0SKHKJD3ejAALpzZE5XcWtOkgGelww
	 mwefntd/yLilWEwFySrfcgMpzP2SxeM4+yxKR08ZyFkozp7c2Zbd8Ni9YGuSetE2Li
	 TwHN/o0BGf2HAsg3hRFwePYrJ5jwPJfLXenIm0KgLN9edhHuKvseyogNQkhrsneJkd
	 O9iWZGefIHKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD9BC25B7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169222218869.18203.13016115568989583219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbe1bee8b54256670c2bc4cd743872abeb063efbe774e1fe65d13ebd7a98bb4
Date: Wed, 16 Aug 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692222188
