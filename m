Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3993F79D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9018C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679087525;
	bh=a9nq3hVk1k149Hwv6UsN1mu8pBjiqHmnpZj1FbKbGvQ=;
	h=To:Subject:From:Date:From;
	b=EUFhrWqse6ZHE0TKTbdyXRb93GPvynwu03o5ohh/vMJLBSzEbuwc8bzCgQ4GWKp9E
	 ELfJ+FVjQ4CZ9KI/gQkjpO/x6Mu3SIvE0KQcAdUi772qPaGaN8NjHW3i5aiPnR4gLD
	 PUeDcC2ZWMAetwNFJ4VRZo57OAnVK0v+qYvJeALJ97VznJ9ycKX6BLGT0iblu8Vhjj
	 iBBTK3KNd1iBckZv8uhhJBXTckm0SIa6pVN42cbjbLkyW0O7sKW053dDGfqj6gvHMi
	 cPx491pxudvCalWy0lZqyAtiU9KoRr9DFNdzbbBo0hLOQZGJJU/ZsnP7bZ1ordSNa8
	 a0tdE1eciLuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD266C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 21:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908752576.21566.7248359815087185751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c420c25065175406a4eaff49c0deb4e3649ed84111636e7e0d01303e6f8c8c00
Date: Fri, 17 Mar 2023 21:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679087525
