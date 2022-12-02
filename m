Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C392C7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BEEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669983654;
	bh=GSxKhnd29lluL3YlTChZeJ5j8y1R+bD7qf3QbEuPX/0=;
	h=To:Subject:From:Date:From;
	b=vKQLbN/t0b3F/US2kUQnRFjIrVVpbIToD64SmO31L04rqZjZTSbGTq4V79SRx+4ni
	 IOeIWEwnfDlzoaMAmcNwB2b/fWuCIU7laH5lhHVnVRaTtJEmz3hjRuYtl1+Q5PSWro
	 EylxwXM63hO3HzfBSu7LYnr2J/XTHi0J3M5X4pes6AGZfjAseknyPPv/YxOI666zMb
	 kdcMFP10ufExLJ/Fa8xWnQNG1aMhvz+69nzGmxU2IdFyzHKPwoBojnYomwCexYNmA2
	 Pn+Xd1cdXWctFywcoRK/P+NEexKz1324x9ReL1VDYGXxQjo8rzpM2W3qgunYaiev9N
	 LLhDZAiqmhNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2FAC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998365436.19163.16182982511428050748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0383d4f532828335a1889c8b4d4e15193a0c2277eafd75d3879979f993a779f1
Date: Fri, 02 Dec 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669983654
