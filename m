Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271767B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD41EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681623305;
	bh=NmuD2qTRmc/LJLFaALFz62YAHEzhtvR+q4nZaG02koU=;
	h=To:Subject:From:Date:From;
	b=nhv51l2W4dUEuNA1r9j7kmJ6sES+W5hfB4L+uPQtcbX4UtW/r5QWSp+hlWbgw9PZH
	 Hn1zAR9tT9bliYSwtKubZW8IiG4eENuUPOgUVBTqKLp3upQk1tjjdy5nQWRZFQphQ/
	 Xd3qUKkjiv1a6hME9AAkeLUVR2a9bI9ozcalWPo9jswNB4dIdd6oTCJ21gKRCwHNJl
	 ++rpOqDS7i9zZxdYVE8gb4ZZu5dILDMzlXH4uUix9MmjBKK7bXnbhK6lgt11zUJUqd
	 +hnGZL9EJiurmhLHowCgf3thjOT+pRGsZjx9jAct/DiaSpefI+PTc3FosJoAN9Hpw1
	 6UHRhuCIjssWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AB2C77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168162330572.3565.11090141918133200470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d895d82ad628e965cc0589340a565ac666bf6414f214fd53742676e21731be
Date: Sun, 16 Apr 2023 05:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681623305
