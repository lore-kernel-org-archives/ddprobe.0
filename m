Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6022A3C28
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD854C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689052628;
	bh=oXKfevSVIU+o9wJLLyycSZwzggSYDkcL2kgg1IUjKjY=;
	h=To:Subject:From:Date:From;
	b=aldyy6bMt3UjIx3BfwXejQOyk50/RC9LBT611KbHWIQWQSR/Su73HLXzn51QAl/Cl
	 m2itiU34C40DYUq7Ped8SkV9udhJmI7e8Sp7y3Dgx+4J3++Y2sOC1vClCD92d6uaWi
	 FvA8OhESOPSqkgivWyDZzhqeVpklLHzu9JSXUvrNfKcOvVH3BIrt0mSOwBpqFrf5Ne
	 JVzXvSZznOl3YC+nIDwSG2696Bc8jXAXgRPLFPtn/a+iP6jcSkuwi8C4xLGyIakgHx
	 QmK4kTY21xGWlnfEpkwoG8rNKrqKRml+IZtTeqcqDfR+6BMM95LRpsooeAt23X3zwp
	 jVFQNFDAVMl2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4D8EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905262869.27963.4151233267982194432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6891425b0666ee86f4b684cce2a18b31253cee99b47c8c0b455eab9fc88dbc87
Date: Tue, 11 Jul 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689052628
