Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42C815C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FBEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669380654;
	bh=gdjwIx1WpWvBygpZyMryH47BTTB1vx94XRYk/8+m7Yc=;
	h=To:Subject:From:Date:From;
	b=RmE4CsZQiS7iS7uapc1gOYbg1Nz5TtALQH1FzRljaOpH/4DsnVnG7MNziJ4b8YRKJ
	 BLq6qnrYB+02v01IEin+sYjqojLgpwH3g7jAurSRDE1OyBkTaS6yhQ3NgUNi4Cbo6K
	 pmezpI89rsaup2ioVB49F/utY2VkXYqJDYMxSoiIvw5BHvLpcgPfHANe6Ndx9D2qLg
	 ydgHj8tA9mjthuncaYvLgXMgDzo4bUN3QWxXqB3Y6ws1TOiE9oR0SyWddrSgf4RPl8
	 h4uaunnIXkGLni/666ik+eeOYnHcEvGloGvdsn6wiQkR4jwAlxD1ihzgfKRIkkTYm4
	 pSeL0MG5Oppjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57173C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938065434.12012.635608558761335553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7226e2a553f73dd38029cfd83d522c986cba6f018680d55a0509d44864e9b613
Date: Fri, 25 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669380654
