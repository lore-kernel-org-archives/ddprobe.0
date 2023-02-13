Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1481C26
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 05:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE813C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 05:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676267646;
	bh=Fi1JTc/g8XFn0m3en26k+a81QOu71F46H3RVPqlO0ec=;
	h=To:Subject:From:Date:From;
	b=Mlo70lQd67j6j592WZmht+ka5Rv42sXWGaEhm7EGcRmsC6E76GGFewKxWjNAWVQtJ
	 VLdjM8M+qDJsoHH24A8WmQGEIu/5BZ6wmNRm7yopIAXwlyAIDMdUqtjaCm58undoj6
	 SEJY2emgttZ85lGQiPIrkZAt2iW2ZBI+qkyGNWvfySskDZEI7Uh+qLzhk+kYW/xrv6
	 9UfY/s7VJtr9BbqR5YQwoQNGzcVvKQOrYHnWf0zWbdcunbEG6w25fHAgWtcABSdNiJ
	 MVpocMJAHHvVb/MKP5Dop6qFv43xq87eizt35WIhLxIyypaZxr27y5lWxN7w6ayIO+
	 UWUcfCLuJn0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D58D1C636CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 05:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167626764583.5831.3755422848022632906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c748e3df219652a20c967763854d821e4ef0e9324dec50bc46771e16506ca76
Date: Mon, 13 Feb 2023 05:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676267645
