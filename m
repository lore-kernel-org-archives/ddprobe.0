Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C16BA25
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789E9C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667772054;
	bh=5jDbNW6cyf57tws3wsIbGtcJKGA3G4l76VplOWbCIvQ=;
	h=To:Subject:From:Date:From;
	b=iyqgUehu2CPH6VlReDO5TUJtY40awVVw8EsPG5lJU1VcUIAWKv55nCN57Cng/8o71
	 3jdQvbAr3X2H0Cp2ciIpQLG4XfFRWcXJPrUz3krKqewnGWbLZpR2bDZF/bu0UlW9KA
	 tejBfJqgKTlxWXjgO6j13tGaW3FCaWp3ebWKnXbyG8SGPGWHhanEplxCvZseDMhahg
	 pxWNACPXYvoO7F1+2+lh2/yDlFTS0hSU7OBE/F1SXFUMXeMQUWZzcDm9F4XgTejbA7
	 34Xf80v8HCWiVgqfH1TKYQhtlzKbZvT1kFg31vBIjOwDezr/yNbXOlebDfTMhpv3iA
	 Fn+29XmahQ3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDD9C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166777205434.7317.3729277388063774094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d3b188985c8e918541a50b11cecf22eece07fade3f98140e990733094bd65f
Date: Sun, 06 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667772054
