Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED7E10EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729A7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665992453;
	bh=USUiV1C4SVcxzr+bO7WjAFSVibXF+B6cWi1xvwsA0tA=;
	h=To:Subject:From:Date:From;
	b=lfb4PcAJBOR7fEoReJJbAbyM70cvEIOaMWgJPxOyAqnit/D1zLV4n/fN5RblvtXuu
	 hkzwnqKgKxBpAW0hgr7m5oedSzWWjfQPZjbdU5eOyuD8j4C2RkNg9q31xxHg0KDhN4
	 alhUK+RihhIJ5DcGTxzbxdgMuC/47sCQFo+DQXVNGpkMl65A0Oxy53USCHeO8Hl42y
	 LDjH3t4SvGVJcYHXkspbfvInCSmqoh5Pu5KzEsdolD4tZlKNTfNWRH35WNje+j8HKa
	 tnyFaLtSRTpe0uZbhPj7+NiEGfFcP8o+4a06LKrCRMaj/LRCctfWRjHGkRsVM7G/aR
	 2V1UhE4yajxhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D19C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599245333.20100.11209326837380366341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3eed66fb900c5470cce20a73d15638ead5df86b848ba60d8d32f3b7529ad62
Date: Mon, 17 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665992453
