Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC98C29AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7626BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668768054;
	bh=fWlZV+nuo713CaX15MIwpT+cGXKhAaLPMkguVtI3O+c=;
	h=To:Subject:From:Date:From;
	b=KJjQqIj01ocNCNDOW8+QpGgVkCWsuvWiel7trXorddjrtxr07ypqVumoeWyGmiqR5
	 /I2jRtIpjlLhKvBXh/ROGChmXwIhq6k9OlbMi5Nf3I2UMSb0h+FpmGecqyKrpCGugK
	 sJVu/c4js5pOwhSozDd9nwoTLsufG0Oici9aGg8+Mwcx/eKyj+fz6/pyGEWLUNKDP7
	 1h98Dkp03v2dukVl8vN1mqBW1MpTRFVvrW2155ytpomi/rfmo86obo9LOZvFY/y3zt
	 MN5e1yFgkbxfvtEIplxxiH/ov+LQKjHF5BGbvgBjdRbTEVUyyQ+GTDslDtj7ujRlS2
	 ggz66QTx3gSgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607C3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876805437.30202.5777233182200288938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bece9bbb13762280553c27139e054501dd3ba7fd8b9a3f64f34ce00abec1a6ee
Date: Fri, 18 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668768054
