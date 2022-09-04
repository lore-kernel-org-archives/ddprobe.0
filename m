Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49077E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ED9C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662280253;
	bh=Esl2M5NOmgqItycCxCADwntCSobdndeFvlUeXZZrr3U=;
	h=To:Subject:From:Date:From;
	b=Rx+cMo0xLFpbmNX+GPf+O/pd+/h3X6K2j9xa+hb/3oBtipUg62PybbcD33Nz+AOQ6
	 UOJGY91JNX0pDDMuk9iJ64X3r6rz1gIy3tmNhmRj3Vz2mnDK/qwAJklkQx9TqVyM4Q
	 eJ+zKsmQ8IYUP430cJJde9Ewr/fq0DNIe4ETrOFQeoULmfFLW9c3NJbtm/ls/MS305
	 W5bWTWTURazuDO75wuFC8nJqJfMOw97j6HNjNMyiRmmFbtX6otcLKP+4DfwgRH/3q+
	 OnCJKNaL80ee77vGyB2SZQ5q7zWERnTM0AhN//PdeN3oLuAT7yANoGHPAgaKP+dEWj
	 dE61H+yiZLtNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581FCECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166228025333.32230.10755032862614588959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253682a6fc508670efab2a67f0579ab28e58e5c33998f87fb8f3b92f90a724ca
Date: Sun, 04 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662280253
