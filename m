Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09053C25
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CE4C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673286087;
	bh=0AK4vGfgEVuFf3nAWz+mCnSbBEtCs9Q/HpOnuknAlIc=;
	h=To:Subject:From:Date:From;
	b=QPddj6drpPAmMYfhAr4Ul12JqKr6fZWX0p1KBDePRlDIYiiHGK82YgQbRhk5xUxnm
	 +1jWd4hAvla5aRGm5TTkDGN/40sNhUWF3HT/c04c67FJ6uAcfvjLediIubyZiZ69yA
	 XcXaBTyYTYMc2s/GK5eXACGHJwWlkc1otZBFDTeVthCDCEm1qvjQ9xlHwNJ2uCumu5
	 1T7ErA7GIS467lOMxuHgglGjiC0mxzHmR+TQREyeU+hA0+IqLhtiVefXYgxuVlLb0d
	 O4yTSKfhhowqohSELJZ1rtET3tqyKrhMVfX30CdZSTg522Vveb7nTNrl8s6WOKDtmM
	 Uqd1IcMuf12Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCE9C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328608743.6482.3250347307710459610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662e2254140bd05f2f3d67189063ac742986f3101e79bc74806814b53db910a4
Date: Mon, 09 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673286087
