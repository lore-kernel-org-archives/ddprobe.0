Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42E73C28
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A387C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670169654;
	bh=c5fo10DTQhNS8Q4QybpnsYuUaa10eEu81KauoPc5kAU=;
	h=To:Subject:From:Date:From;
	b=KLgXR7m4gC/wJFEIgA/tDz1et71AbRlRfOu/ktSQ3n8OGTR2k6VJy4GJNlEQqOdwN
	 xLE4XdvKdREXjXp8JCKGT2cDPVJhc0d4qRfi7AB0onPVPABdRDQoiP5FvdwmZ6QlB8
	 HO1mr8uNYkxA86RqkuammwFUj4bZzQdghnVGZ/80wI8Y/2sRTBOz3aChFvZ6PcG/tg
	 k/6tNN5QYpWrRuK7C9aLNiyENL/yj825MI+absICtXq7TlxHjDQAYqL3SHy5x5qGCS
	 yPPtVNUQagbZSkvDRSQIjfQRRI2+Lnb56gJQghm94N44O1BbjeX6kHstw81qbUny8Q
	 B/yP7uwHGw1Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511F3C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167016965432.12136.16292903835726848299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1904cde6524ce191682c30490d6549963e313ba237ff1d53e5eb361782eb9875
Date: Sun, 04 Dec 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670169654
