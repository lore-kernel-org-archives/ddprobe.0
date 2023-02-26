Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E7B36E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBEBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677377105;
	bh=HHOrh+Ql6KwthwnGCtDniHMTNlnx6D8dDormWwn/SSw=;
	h=To:Subject:From:Date:From;
	b=jvGBqsUfsY+SnenfYZfiaO54mLilsoBH2WUUcfLS8DG4Q7cxnWPppUBdxw1hjBqPA
	 1WoQEEMrlAJUFvRPpCK3oTPLaYs5Cc/cghTMWWac4MawwaOHRAKkWdzD/zkqaUhf8F
	 mmeR8fvGHuY+GlxAk+tDnlD6chJQTzClhpRbHMx02X93NCTEiRpoJS+3+9H27S8ckk
	 GDCEX3POLNrBOPHeRItrPjLpGqitkaQtvVaaxl8pP1+LcdQR0O6qv3HuaHTiLGcR7m
	 7O/52mabg87gVMWS6gOah96n8xlFunqhiVESNsUaPWX8+E7sGp0doMmRFcvIan4p+u
	 N7KrEigV/wliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0612C64EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167737710575.15266.725676507599896047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1150b508e19ba37fb84505fd92b2499578aab893df89e621ce88bfad497d48
Date: Sun, 26 Feb 2023 02:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677377105
