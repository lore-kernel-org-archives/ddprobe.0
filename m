Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B164D154B8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 12:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2886C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686312966;
	bh=6l9oT/lzP8Ry9b7nwiSVabfsMZutVePsXlSv5KNMBgk=;
	h=To:Subject:From:Date:From;
	b=tltB2o1KQVb3yVqrXwZxfva0vZoeE40rVnNt7FiR/QfEG5EkKvOoNGuRNTNI1GFbV
	 C6t0QpSFnaskkhIgIXJM2pBDW8Jyw5JzrjvVMfAnxuCP6m5BfjcMAp2LUx8qLhNRwi
	 bkX+eDpYE5+4flARPW1a8cwdilg3IZrhL49lVgPl4H8XGxQmE+kZ/MjtcKbwtq8ef8
	 ZlttqJEkkhvPH9awx8oVqGHxUbzTzAtSFUZfHG6YhRW5u6RwREDotgUWsL23ZFAamh
	 QnOlofys5ZwwonS0v+GD60LyMgbXR8HnijMxKD08KUqJVtIo4yTkbcfgWZx1q5Qp0t
	 U0O+sqCe37YWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD215C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 12:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168631296580.428.4469084389518167948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6803e8cc55f4fff5f50a634648ea84dc73814361a4bbb669d9368e25838672f
Date: Fri, 09 Jun 2023 12:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686312965
