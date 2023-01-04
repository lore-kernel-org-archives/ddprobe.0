Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBC2637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE15C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672809687;
	bh=g5CKNbSrFG63/IniMA2Ww+PRZIP5IfU7pJWR13bCuzY=;
	h=To:Subject:From:Date:From;
	b=eefDKGfUC6QkJxbYuBLiCncwUKmIyfIeeAOm5YbJUF0NPM6LOZ1Maeq1GINKxpzZr
	 Bd7lFFfhneLSYw3FSziyAv/E4H/mlHXkmf5EyqkQI5kkxX3AqABJG9MNzLwhiyqhVp
	 fWdatDHzaAVBRhWAlHyKCd/qtBdOL+58lokZiu15SOPBdsL2hNkuvj5UCmYqv6/8wm
	 TzHblfzCnBGiA0j5TQFJDnURJ5tjOkgEhiQbsiWt4Hgq4AQu5+xogTVF8XM/7FqqiF
	 /W79IWEsWUu5kStOB4HU9Ut+teYjKFinsxXU/nuY8F4pImFibbiQI9+it0PBu4lUBz
	 clNfgXqg9gNgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6493EC4708D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280968740.27765.11027383304023581468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dc50c7bf265609ff8a73f87c7403ca3b33e9b20736f6618375885ad67ac2bc
Date: Wed, 04 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672809687
