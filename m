Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773B55670
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 17:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25E1EC433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 17:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682960406;
	bh=INCoIv2Qvaj/HEO0A2ZP79BQwr/l1gXmFgtkpYaGOIU=;
	h=To:Subject:From:Date:From;
	b=U+CIRB+ZOXZrrJiNMUyetKqVvM8OcqCwUHaXgStnz89KPNRgDZ1KlvytSbo5xfKlk
	 LpK50ClVZGS6g/CvE/KlugfVUWj1mSnHR5/U5FZiAttuyH/Es5Sr+5PqoyhtlTtEWn
	 O1cQKvyod/ryunZhz6r+gOVRMMPBiLnGiAvQOyvpoCiuQ0X9DUcq/lRxAkkcg5SPsR
	 pTZgUVyXb9NdzaeuZi2ouic4w4ryk6Z1tuxidmjSzvxcC9hpFt9elUafevjsL0Mg7e
	 14ZlTYH8PQW2f0scdKo3bnO7BXIMOnkM5qNt3bjzN9UEzRLbGAWGONTj02fKaDosRo
	 Yee+uYD6cTofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00CBEC7EE26
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 17:00:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168296040598.32502.6336686141691995765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3708033c9aee04a83a92367638c9ab0376a42808963675c965531b1a71d0a5
Date: Mon, 01 May 2023 17:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682960405
