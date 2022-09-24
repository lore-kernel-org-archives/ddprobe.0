Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F1C194
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A066C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663991453;
	bh=gOMyyc0Ql1gF03M6pRfsNRM3cujdsZryhEKzj/lUZm4=;
	h=To:Subject:From:Date:From;
	b=oksBhp96hWNnkOatG/07v3UhjDYWJB/Kn0BA8UqmO73i82dZBXWxV9wCns/yzSoEA
	 bH4h2QcTD3PQfrCOGxbrh2yhEQ5YSELMGcnLDL3ErkEFukqyhmEiPFSE3KJb0Ngxiw
	 73ERc0lqms/Y51x5cxE42o/5MsjYWJR8GKrWjG7Z32hwtCqvS5ACyE5CrZKPPJCEf9
	 Wh0EZ1ulNDvKssaoYDmL8iiDLpYvDN4Ek6r4h1p1sx4ul4wAVcyKgPDIK5RpU6yubP
	 B6go++u4NZJD46KacUjY0LIfNqS0D7ntVueqsT0KNlfJESqwVJd19PPkgMkou26m7+
	 wNoIBsBtkVNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB94C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399145331.1191.8325080481690937759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59eabac856817be6a36b2fec8692cd4ed8a4637ef1b88252ffb0be20c8fef85
Date: Sat, 24 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663991453
