Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD68136D
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC191C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679724725;
	bh=MN7nYN5ghWTaPzbEF9Fua4WlSlD9HYe66uYdWkCoDdQ=;
	h=To:Subject:From:Date:From;
	b=h0Jm/y8WANV6ph37mdIyxvIoQFJRyiZBSH2vdnVq6SKXY35xVYIfUu1pqz1uUHapp
	 ti9Fe96H47x5wWwE5aDIBGREP0tOINhKx8O6l3MUh2no0KJ9B8RQo5qbClDzdoner+
	 aZ7Z/0iKW/R9VUAFvo3O06OQTFJ/vvJzekMKKvxmhw2X6tIFvOUTc012Yj7fwQFuSf
	 mnNbCb3uHiaHoiyUglz0ck1iFm9LXC9jJ8VEDwsUMgNWYKn7WLk2Gst2bX9hOGKZKW
	 oh0G5BanlxFAdHsY6B3dIOi6sljFIMezvrkBdB94POUB4NYWrSnhAAu9rOl/BbWznQ
	 Tgjj2p+AhJZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C0BC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 06:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167972472578.15323.7115591052304861097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2727cf54ec6f023d3ebe7f3304713a786657a5ebf3af6a73ddd225a1554e62
Date: Sat, 25 Mar 2023 06:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679724725
