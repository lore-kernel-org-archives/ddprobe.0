Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A082360
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7F3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679646665;
	bh=3ac9vmQVGE0ybQ8uWH1NDWuxoXkhwSQhv4NBqWjx484=;
	h=To:Subject:From:Date:From;
	b=InmkSYcEEd77Bc67TJfBsX6QDXduYYkDw4uWWGoxJSb+18e/RqBw/Hcq2TypTWPaV
	 alYzKC2LbialE70IfZNTG65hQRstsHUfetBEzp8f6Ne/4sMXW360nVJ10tk2m/oHyU
	 id0PKqhBt/i5sfm/+wXRSUuqtZvG92AX+yKTgf2gdCrqgHUb5pTxjx1Av01LdOMc8e
	 uiQlpJ4YhubbJK9xX/N36rHoAdnDibvC9BafKoA/FWSV/tcxq1QtM7s4FJjNvbwtE6
	 qcrInOZRRgQyIr/yfA8kAYfkHb4GCy8NidZdeelTefeEPYdQ466Sf2ThvUBy3dc6cM
	 C/dhKXOIBQuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC02CC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964666575.19246.17008951293544634996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be9e8e129c3d5402aabe85b02dabaae9b6d4c1a65e8b9d6a7294f85fd51920f
Date: Fri, 24 Mar 2023 08:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679646665
