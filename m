Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65003100D8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 19:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FBCC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687549388;
	bh=eB4v3SG4da3lwOk/0vMAxNH4WdruxhQsf1vIOdcc6Lc=;
	h=To:Subject:From:Date:From;
	b=nWadjjFWW+yMLoThlM0aPOIISreNUoRhVuaZHMloitmcBs7OBPd12dk6cjXU8tXbW
	 7Q6ISQ1eQEpM6L1f++Onq0kpINsc1H5iJ0jlCBSn2AHO2X8pYpCM8rxvKSUQscqavU
	 msSe8rRQm+0v8SZXkmzfodf0oKFcsb2MdqydbbToS5ay3XARdawaEeZSmX2I4V2dHa
	 JYomHFBVirVfiX3GjMEqxDe9O3fmDKKVDgaMagSTPFxuSt4XE83vk3ht1TVprRrItM
	 VHhMGTOpXN9Pi2JwfJAHcrByTeVpjVOrYBAYyYMhGrrFIrGlowhgLboKiSB4giyEAx
	 Mjov+R4PlnYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC590EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754938876.13439.2275653670342456815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb63f34d0ba19d1327778c1141c0006f3d0ce2cfd51d550a7dc46a3efc4f008f
Date: Fri, 23 Jun 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687549388
