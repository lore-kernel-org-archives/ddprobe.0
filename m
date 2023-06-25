Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47787372
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DFBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687660388;
	bh=LpLeC3bsqSWITEMLJvtRu6fHYBKpXTsDlzyWoliNdXE=;
	h=To:Subject:From:Date:From;
	b=ODuTAtM9M09RUWo4mwZdn7oKKbuTbyUFIRXYZIPrLUq0OS6sIDZCmxe2+Ak7sGd6y
	 cYyZX7dzjTeeIpm6JCiz1/MdRYISLwifOkDC3m6fOIjRM3lk27ETaSQa3zGGAe1Oeg
	 GMKVu12t4WYXYY9FGUYJpc3PWmXdLUNIXrS+nDz0UEDNXLV1hA+HkcXTTXilNBmblo
	 iN+/i6ss+S+ji/PgdvnzbfpyeG8hKzqHZNFPn0fOziFvanIJSyCbQ6GWBXokAu06pS
	 yLjOJnwsIfDJQokubeDOZpgfoBxUjEaLyyEWqo9TsxyzWykjxPlPUFVC91BaMv8HfI
	 c8I1d6NL3Gmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4CDEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168766038868.12033.5753392732140163497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bad5bf72087e4ada86d9614406890ed17acd5e632bff336bd5a2249263bd3f
Date: Sun, 25 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687660388
