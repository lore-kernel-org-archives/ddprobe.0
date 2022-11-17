Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B229F17E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D389C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668666054;
	bh=iS9/bAFnPI5bUlVrsifOnJSLbMiRhJxb7xRFgBI5a+c=;
	h=To:Subject:From:Date:From;
	b=TLH6I3KXTsbO6H4coVWzwFxlEBEcQdwhkW4grW0hl8gCqQirKUw4/Jv19fBRT0NWN
	 EzKK5zXwiRie9l/tW8CxKZuFY/de0DZflvfVS8MVekL0fU16NORop5e9Lz6T0eQ0JY
	 wlIxjszMBbdn3b5EeIENOZrmNMYupKqJjtzuJEN5oF3d11Y0Tr+s6ll5CoGO9doi2f
	 AKs0tm2RVCeEfzFZpSPKrszydtFUri26XG8vosnVuJQNqJBiBeAfmqqcob8WvSI2Au
	 IxR4/dI3OBqqWBf1KTQVdzg+OZ7Ll1Ye4LQs6yvd871lZrJsbP14MzyKi9A2sHrS72
	 xOt2qtmcgbW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55995C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866605433.21929.12445477462758645862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590dc6f3cc8876b7ed7d9a38119a09d32b2fee1d308b369de550e0111bb50505
Date: Thu, 17 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668666054
