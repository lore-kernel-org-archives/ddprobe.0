Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CDA66E0
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 895BBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663780253;
	bh=wk+4wO5wJ6kNGl5vYT6d9Rt5it3gTUGEGIfDp40sDAM=;
	h=To:Subject:From:Date:From;
	b=gog6ApVSKguPgN939ExupSDcEu7H2RR6NJpcA/Eol3DwpZKCeQb9hyH+HVWf6SGEt
	 lZf3GkaQn4fWqMZ7eeXlArZlE7PBe0zVCSeyulwTPDx3V8LWp3RqgB9SRqPmV8Fsz+
	 efDq+vaQVbelG/hC/EoviU5BZvsU/sawWW4LCRWUNbCBXg/P2mowVkDul0t1weuGK7
	 /hXVugiE+vxYm1OqNe6PriH9LIAxucDf7rqtCjl3cA1TvxPtHiQfyScm8ZLhNJkYWV
	 FVOps4cRWHrvDOLuMvlQ+CA8XvO5nf98o5YPG8eqLYGRa5Tf6mn7y5d62H0OLEMQvQ
	 C08+8++5fAoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4B4C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378025342.19321.13157837146437665851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14ece161a4d7006d311243929636f7dc22a9f437d3d1de2788e354a78e7b138
Date: Wed, 21 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663780253
