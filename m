Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE97A23B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF54C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670061054;
	bh=0t5CBBOkpOsw/q2rgfZR6Tazie/cnGU7pOhVzHjQQjE=;
	h=To:Subject:From:Date:From;
	b=ofKypg4cSJs6AyGnJNH4KwgRFjHgvOuZwiCvVus0cVzJZVUc+XOx61qZVLZ7vKFb3
	 fK2B9cSr1nmqArNA3/WA3sseM3GkvT7VEWR2YGNpbgDG1anoC4jlTurJjTNuw9sn5l
	 djDNU84PGHPUVN9eiaPzvPuO7FYshpyTDuLyElq+n3AKGxnMmbvLafpArHlBaiB+cm
	 sFKz86SdQRJLpX+YtHstM73fElifi2Tj64oXq6DAjQj6hpzsBYzK/WauXTYXjyd5sz
	 TrEoVWXPmcR/1AqI1HlTcs3DEN+9dXXotHAQe16S2aEWv+tGB2my7iGpTJoVM6OC8N
	 oGHv1oRCovWpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E0FC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167006105433.5248.4633826624584381336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f72d846875b7e6e7e96c454c17f6ac52dbc314c0cd76803fb18e7e56eeef04
Date: Sat, 03 Dec 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670061054
