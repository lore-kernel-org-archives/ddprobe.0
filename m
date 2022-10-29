Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01D123AA
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 671BCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667028054;
	bh=FEeqWkPhgPPuUSSWDk+l53EVbTX7cUxFv5z+tf3qOdE=;
	h=To:Subject:From:Date:From;
	b=WuYeugF0u0BmbNy6DmFB7EDXOoE8kUjmQ9n6CyKOWaJLFo2YqYjiSe4quzkchIR3U
	 z2+hbcpqzP+j6xQMd2LvdVX4TfwMlbfUinNK4cZTL8JiqAdmvaQG3UX0kfrw03RM4A
	 f8eZHhNAy2cUBvx2V98DLEL1Psn+8oyg2Eqccm86VkkbXwqP7zsTIfv+rRdpFbMuGy
	 xNRUGddjr6UYb16i9Vs8fWXYxofbM5cDUN+otVZG7xkPh55Q5dew0yRprhUEC3UBUp
	 5NtUomZxbwvVwd3KhDda+jtmKbbPqyjissTT3A35z5F2ZvIVGPKfKuhfTr70P7LqvT
	 SO40QHxGhZPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BB0C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702805433.26296.99528952802336094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d15e6ad619a6e947764d41555e4f9a85bb4eb024ee6bf0c21cbc2e853a4c280
Date: Sat, 29 Oct 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667028054
