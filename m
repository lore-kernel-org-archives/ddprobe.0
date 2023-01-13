Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03D379CE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C7EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673616087;
	bh=4lRq/SR88JPWVcTwVnu5L2qKwWJTi9AAdu/AZYvEBm0=;
	h=To:Subject:From:Date:From;
	b=MDhCy3pAKx3FW34OKRL0k/GDJZZqPNvIuy3kf6EWBSBH4FHagqa2ad0rzUQDHYk1K
	 4QATFoRyw76lSkugcWEeLbKfw8ZuFyqKZaA0FDvfASrT+Jh8/EJ5AU99YvvsGs/t8f
	 lGQG+3FwZBCdboJAnyFcxD/jkrj5dOY9D1Ro5+eK/CsRGw8Dx9PBa8qiTBjeADqUnG
	 A2PEFHeHvOiAb5W5d4QbEkS2eQ1LmtqdvUK4vbP7r1Gol1QTH3ZT5b2oH32FRs3vPt
	 yjP58ApTm/lDh31J09aJlh7kBffJdovSzmXHkSkRw2YxYySSm88mpJozDtN53ol77u
	 L7KSg0mDdjq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644EDC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361608740.3360.17365876882956805820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573648739f914e6c763544321ecad480e130968bde3f1e510e94d8e333db08d6
Date: Fri, 13 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673616087
