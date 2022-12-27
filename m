Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFD71392
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9771BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672146687;
	bh=qII37PR+ZaVx3yRyWNeyukv0pDAFC2mETzJ1/Kf80R4=;
	h=To:Subject:From:Date:From;
	b=fNqjvV9Y6R0K1noZE1QRJsTFdz+WhczTzseZ8XS1zn3Q6c8EZWlPHaWibg7jfoHSN
	 69Bz8af7lZoJu7RYb9YCu/MOqNrAPL65vNN9Lcx2giY2U8epm8Rfg5U4nINfiRshNl
	 998OJP1AI08Ef95tRMltDAW/MMumVPxQmbe5Tz+G2CYn5vBdSULNlBWz4gQJaP5Pvh
	 04gcnCSAXlEgHlYb49eP1UcPg0KdaA6cOj+psqPTk+3vkth4vn+pamnHB0TLUG1+7p
	 6ShQMrh8eZQgQ0HhI/FB/HENzwOr8Hs5U2voG20PWepOAJ0N5hh8eshHHQd0Fb4Nib
	 ng5LDTHNawzGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A8E6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214668748.21634.7392868007733235478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b78c526c225399ddc9b0b2777256df38e8cefc3fbfe022ad977e17cd4dd384
Date: Tue, 27 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672146687
