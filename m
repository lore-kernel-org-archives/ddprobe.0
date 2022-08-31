Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE917E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7422AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661988053;
	bh=Yo/vWft5gSmtxeDhAfVgZQfSUoQey352JQ616zvxBPs=;
	h=To:Subject:From:Date:From;
	b=idl6NZfmHixfQ2LSSZVgaNnPIdJN2fTmAQBW2RBKd+z33InKukgr4NL0IRDS/jQCB
	 uMroSEBac+e225CzdKSy740798Jk46OAV5AXWjOPJma3URaC5Vz/iIWtcGtii7+nNz
	 87yvOkBoKICSI8oEpc0FYrfE+9rCdMKc0pgXOpdEPd1/rLOGoM6GmEOtFVRLRf2A1g
	 8Xhc+cUlEXJo0jXl2EbCt7cyBF87RuY4cZuWSlJ4L0Sa3wIq7Le2ktOTYkDlbInvmZ
	 diOFtH960TnVyHje2epVg6e81+VssIpQiSSEJG03nUrMelIDMpJ9RumMHD9WwE/1z7
	 rsYFsRgVlT4fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CBCECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198805334.7251.7803445264464277493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656db43b4008a261ab6a29108e323f43afaf159420b9e7a9fb512eb511007d52
Date: Wed, 31 Aug 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661988053
