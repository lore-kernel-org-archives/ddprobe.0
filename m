Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDA11C17
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A35C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693266848;
	bh=osZanNLbWDQMbZra8SfTnx4g8WjSbZguMW+O44zkvDE=;
	h=To:Subject:From:Date:From;
	b=aMIXs8gId9r/gd9rZypV17MgDe69J+ryfdICmqRPoEbA4THG0r7EOpr/Suum9CFj7
	 c/Zty4W4JApS7faf7EGyUAmih7uoGfl+miVuWJdCD/jC/cQyadbGwY95Ku/zBR7WL+
	 2m41Ebd6hvh/D/TuahU95/S9ML6ERqp9AgqcdY+7SW4sin9Rpoh1Ng8sxOywa2zxZF
	 2F17pYqPsQU1Qqphx9v9DSNGyrHWn2hA9Fw2fvUNCQh9iqrvGPM1VogbtxyV5FbHay
	 cCYKBzEirpTw1ObNhEaCXKPoKFvs+iIXX3CvD1LEznSGtw9a/59G72E77kRTOZmVlm
	 pyaf1qrfonH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFECC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169326684866.5188.14039871942781627729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99190d1814fda47be8aa2d8dc77ed7ee3c575c2be907790d1c52d330fc4c1ae1
Date: Mon, 28 Aug 2023 23:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693266848
