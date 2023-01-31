Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E3F7E
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12BEDC4339B
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 00:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675123386;
	bh=LffUh/WRn6XrxUif2unkRMEi9yVJwDcWLMYWAMk9aoo=;
	h=To:Subject:From:Date:From;
	b=CG1RfietyltY4c/8o4Aogltt3u1QjQ6MttPBGV/nFq5Pr80eRxRDuKHAkW9uT5IaI
	 uXeuTRA6GeYh4qYK5vfqmQkSkN5ZLqZKoabMYYZAch3y7YYZN4YafSDuBw8FWjQMDh
	 kddrnO9eNq+VwuHOLhbS53I18kUPs7yFW3Ygmr84hZ1yFA14Mmc/Gd2NqG35SiGwpE
	 Q4y1RkKi1qFGQ6A1u9LaJcfrJ5QJdDsslY1prDV4l27ZVz1QIf8UThb9iExtQ66CoR
	 eGwBmYTtBax0WUYDQRD6ooGf4PLKGHttFY6FflNtdFr80oy3wbAGUQhAUgnaVWm/M3
	 UrfKGbbPqx/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB1B5C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167512338593.18342.13632255941354791141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0169a1ccd27b78a7a3e0781b89d87cb4c4cad154dd9584a919e31d343c6cf8
Date: Tue, 31 Jan 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675123385
