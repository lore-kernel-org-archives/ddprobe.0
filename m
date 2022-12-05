Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6D57C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B38C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670203254;
	bh=Q25F1taxOGmsrV2UG/Nx8BbkKasZlD1G4ppz9BPtLnk=;
	h=To:Subject:From:Date:From;
	b=HZWNfr+XAgnoQKrXweHu/I98Imla516vp6EJYT7X/xPpwVhvDO1IkC8VBfvBQZ4r/
	 dYFBMJfcckiisFa4ASu8vGtT3LzsUIehhHwYwpmHItC41STNMkkUPoCwse5pvAXSOS
	 jsMMVV+8oeNsT8I9lwy1+XgG82RsULW/Kc7ccgNMwfKo57gomLBTuvu5a7LWL2expT
	 x52HjkmV8pNxH9D9HCDZSk4nvSv9JF2rRh4cl/s2KtZmUk1RDolC+tZSbNWiwYrnpW
	 VMFv4qsQKx2Igh9rpBphLlDdW0Soq8zM+gQwLdLVPKVW9q3h4kmohrXjatRfDEvlIm
	 GAGWcRwzC+9Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54924C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020325433.5804.4614032137888102910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fea6f3e428ab16b09ef88f5f71f90619d0ccf8da8f0191950417dc3668945c8
Date: Mon, 05 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670203254
