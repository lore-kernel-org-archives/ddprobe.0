Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EEC2F29
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC39C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675968725;
	bh=9PlPcqRA+0UmDiU4PKPC1BJwCGzJ94nGe/Asa/irq3M=;
	h=To:Subject:From:Date:From;
	b=ISbj1oSCLyH6RRga0djV7nZQaDLMtcaZ/3nr8JHbIh65cxnfn67+jgnEGUsjsG2NU
	 k6PIJQaOPKNwJUNrIzvRT62Wum5rCYhP5goDxmX6Y7VuwKN4KxC453Tbbr5Hkm8t0m
	 JBJKApAtO+FV87IjfJJa5rld/Q3EJ12dx96VdHlCn3JJJBPHMEmbet97Kt8mfayikF
	 kRHILb2oypTGGWB/XvjEEu1NFi+YGBa4xz+ZUp1nVglXqZ2pcCHrkdbghzM9/VCmXO
	 hSbQTlyqI8OPC4iuvlWC9YzbKK/Mn6Y70QYJ9UiENAi47ikczNWV+4ow/Tv6Vln0mE
	 DAPc/VIEttsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07CAC636D3
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167596872577.19637.3981499790169443543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab487015089aa76d0d22d1ee5a26f2b10a3df820fe3c0ad3438aa4d8ddb68bba
Date: Thu, 09 Feb 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675968725
