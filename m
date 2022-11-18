Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6ACA194
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B305C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668796254;
	bh=kbYyPCLkE1MWNwiEuDeizQvZCrgiLrlKLheDaiF/t9Y=;
	h=To:Subject:From:Date:From;
	b=V6J6cTkxDxHvkyPatoJQTwtMfL+nalCIjeamFRekhPZniG+G8/lqL+zEm1CiyQlHC
	 41o86uJOsI4aRWRrackwHskelL1KbW3T0v6grvm9wuk9COSv7HyHR2ws1rUh4jm6jE
	 XVWXmx+5i8e4EqGZcdmijh+apucRYtoiavPN1S544hjZQ5cdSbC2PlVlm1q+cDW8ag
	 RR/t23N+Ox5JNtliMfZ2cf0tJQZippiqUJrzDhni6sBXx9cVcSY4EP+/kntr59nILK
	 L5cJAYA1mlql5E9tbGlKsWfeZUXAIVWfCCvkPu9t9VuSyFtwXgpXMG76bVuAJGzx5x
	 7QPrz1bx8V61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D9FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879625432.1419.9467843854591735455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b965549bdda8c9a04e3db9cb5cb30b7e3f05e19b5d6ee8e39cb32ae7e37c1595
Date: Fri, 18 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668796254
