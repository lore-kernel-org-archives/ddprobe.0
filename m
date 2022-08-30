Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED0433FF
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72143C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661872853;
	bh=Gs0aq6IPbv+rO3FIAd/Pk1QW/RCGqgst5p6q8rPEtT0=;
	h=To:Subject:From:Date:From;
	b=eSwhsvx5Bo+rFCf9fpv7+C1a52NMw/4Ex56GxWSvXtTle7xl0n4mZvVA1v8s0JjG/
	 phzO1eNrUTNxSvDnIDwRQNDmXxTowbLMrxv4XznRBXdKMLncD7fBdZ4JijrwzOC1KY
	 1WKlTgqPHUuEbZpYsWzvkJKFG3ucLtPUdD7MKXZJJ/z9LfAclOpEXSIVKZbFuZrhf5
	 7YYFpTgJKFKCIaEvvD51Hy23cwgjTZjdhi5OQ0XphFfsfqDJ7QyP0BhHuyORe1bXLe
	 1LuS78W6S997XuNPuTJ5zH30iZAjk4D2Kd+jw2KdTH33nzSreIRQ13kpIZdlhk3e1u
	 EhH5mF+BW4b+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A374ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187285334.32573.9954070454927449857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a0f56d2ec8c3dc7c967728d44038c865000fea07a879769b6bad24e451067b
Date: Tue, 30 Aug 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661872853
