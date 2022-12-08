Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40557E3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E3BAC433B5
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670487654;
	bh=vxN7wtzUzyKK4eYAgAQ/46n++MRx/cZRJf3WwAAarIA=;
	h=To:Subject:From:Date:From;
	b=D+kCl+optIxnriXN+WDnXwToZeiGTJUCtAfAbvuTEcYd4sy/lfzIi94yTP0W8jWtg
	 wcazUfwN/KgS+/G10XENYPdMMNZ5qH6cjuYEMCrIKIV31xAZleox0vA21ZCU11yqLX
	 lbeOdWdk1yf6wImLjxrXYGoC38ICDDedyyekyMm2qgyHWW7kmRgZtC1J/YT4FCBQeF
	 A1bUTKumSgdgNQE3IelPXUTlthM0ch01WifKMEMj4pA2717HHFnzQwG4WNKU3NXGrC
	 D8DV5H3EDpYYZWdELi4YdpgsJe3n3/87Zi0BMCbYEmWpdNpjHYGqjciJrW6K68oVfi
	 HSTqVzFLoebmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5D4C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048765437.13532.1402937379737469345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61122b719443ae2d829ba42d181a5d206fa4e622231c674694053b6f72528502
Date: Thu, 08 Dec 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670487654
