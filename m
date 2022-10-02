Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93717C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751DFC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664741453;
	bh=aXeUYdl7D3+SQ2gs5XnABysrbkorivn1u/diFPjN+y0=;
	h=To:Subject:From:Date:From;
	b=Bj5C6bwQucKx/yfk2X3m9RqK+2QzGt6Uvq7SpbLZj1yQFLNZjNU12HYv0C8697djP
	 ImuTUQpCLZtH9jgmqKmxvod/8Q8gqiT2RSg5LHcawz60mEZNL/NhlmOmYbUwE4pswi
	 Asm0x2RS28MygXQae+vhLTR+lsBfA+QTo6NrfWbPNqcYRrBOyICRq+eq6KMxuUdBZS
	 DR0tv12fSPBG7CrtcJatkTnNbPqPK4QxRHq+Lxu9GswjonnefNV0p6mFO2gezWVuR+
	 Z8jD8aL50z4JxMhwyvb6xeU9ZXwkqWZK+lWXqqmiNRCjMB168z29sMmgPfWq/0vgiR
	 aL2rCn29pldgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B14AC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474145333.13535.12106474107953661489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b04c6f45801f0f2feaa588b90fd6e1ee0337dde8dd0f15c8b4fd3dea31d91dc
Date: Sun, 02 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664741453
