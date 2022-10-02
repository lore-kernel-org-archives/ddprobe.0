Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C2633D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719CBC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664720453;
	bh=g/95fqoIyhKSnwUZjV5mHw40GqXjWgRhvwPjILPh2r8=;
	h=To:Subject:From:Date:From;
	b=iA5HAOTIWpIIG3KWp4mZL/M01brUix1EiLBzT70nPiy3XkIUm3TZgrbdogZYFe0EL
	 5TvqTUBtbPaoLHuFetSAH7YuM/H0HYNI2J3XIPR+mPClQJI6oP1ezOAx41R/aYo6IK
	 JFcRSZ1oS1b7aHlnN0Ltl1ioeFWrpf0q/eF2PAZPTCjZpvOZH7arxgDkrAaYiT13Gm
	 BiceQICRW65fv+YYZ1sHWLO3pfC6rO4npSdOAkkCPnHWwMhfWjCqOhS0GavBXUnJVn
	 1CyI5Q8PHu5RzEv01OERECx2e9jbpGiG/UuyIOErChmgB57J9mvFEMnrQvCVsEkHR/
	 kLcfauqHPIljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C8FC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472045332.4248.5862789061987935769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34e63b7e4259015511ffff807a23b3d40ce3918f91953624edbbc199ac00452
Date: Sun, 02 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664720453
