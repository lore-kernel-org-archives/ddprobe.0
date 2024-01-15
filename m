Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168F71B7E2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIqp2M/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818B8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705363096;
	bh=FsEX2vPZ2QOmkBofnnR0t0Q6XHOSjXk3nH39k9TWUwY=;
	h=To:Subject:From:Date:From;
	b=jIqp2M/DUqsGBrQC1sfO///2+lStdT/fFI0JEqJ8jNhj04q2RK3IQd4YQY0RFTanh
	 gDdrIfEsQKpBoJQWXGh6TTJA8vo7032LURXpD4OJNOifsK+pViAJdXNGo9rFIzC62U
	 NArO1xV8lg7pPc4Kbkkwca+50gZ4DnPMRkXhSvaGt9qf2454whBWIqYCIqxQGFE4nR
	 qiFbcsVbKbpTPx3MdczybqqlaHcXpd+0/AO/Yz7KMQYiTSK81h3I6Emm7rzN2rKdGT
	 UNe1Y+OKMwzaxSkAXwuQAXULpCq/7IA7D2Q7YWHh1yffA+xRt/71oXesIIeJDDrwxM
	 Ooh8yxvtINrdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6330BC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170536309639.6288.4991510774097848047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aef3594cc6452b27f810901434483b0592c9384779b39339fb50ecfcc117fef
Date: Mon, 15 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705363096
