Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B95917C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE46C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678762625;
	bh=86DhQ8Fl270+nxMzdNOKsKMwndWnfGC9sIrN3A+bPZI=;
	h=To:Subject:From:Date:From;
	b=DobsfB7cpqfFqISG+6WBYOXwKTQjWIwpXcLhjYJ0xIjhLrQ6jotSivmwXddNNZbhb
	 ZwgqHNYo5acvKUyTJ/P7w8OsFaOk3hCJ8Gw8YOZsPI0vpXF5xkTeYWoDRb7SJ/GgBw
	 z7CfH3HNvXE/6dgLFr8eX4t1+bAuvxFRcmYn3JvdxMQE/H1RBwNM7kdpURar/eiUPt
	 XVwnmS5Scx/90EyKT7m3ThcEo5Tqihyw1U1qQYIJoYnMMB/3Pl05sNxbuYhbyizEJd
	 id1m9Jn6Yk4+p+R1aTilpeCqWUDT5bgT/sLgDRLh3c6Zeh6lE769ke26ux3fLtt7iw
	 Yx1jiPL3IQmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0113C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876262577.19709.7274851963892584681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed268f5bacc4e694e3f84f87e03c3602bf2b41550a554e42a24a39c95e9c5ac
Date: Tue, 14 Mar 2023 02:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678762625
