Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135FE111A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHCQGJGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA26C433C8
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700414896;
	bh=qa1GnxAgR5mI7GKf3MBhlvebfCgWiYof9xD7ND/xIrI=;
	h=To:Subject:From:Date:From;
	b=YHCQGJGAfBYa1B5N1RlyFYajLy64MCEd3PgQ/Oqmm8R1C9lpHvQDB7Yxx7+Xc8yMK
	 07/E/Rofocpzwa32ZfXcdnAyZRGnYJpvOlvgTR0uOxWBqbnYYYHWpDXI5AwM+HJuiU
	 u11hFgtyygi8NlC5Uk7yWlhS6kdMrzMXIZOcY2IS+/QNoTab8xOG7wCQZwtauub+Kv
	 Jyf/tR2R9DdPhx9lxLIZfbU2NQnP5cMSv+3v4OHHrJ4X9UNb2baM0xOMZrwWM0Ldgz
	 B2uBtDorTg7zm0x8HjPFpAPCewWYLSb2ck84ct0ba41oajIexp+sjycFGC4/SzjexX
	 E+/9XnZd6tlkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F0CC54E76
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170041489640.17588.4772402726195674488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8564e6584a85980f6bda537f25a129564edd08e8ccf5db99cd11040b4b24ea2
Date: Sun, 19 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700414896
