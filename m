Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFA963B8
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 16:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0085CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 16:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681577046;
	bh=tuo/fbma9rpOlSHZm+1PuO6/X1GW+nGSw+FoDBRjLr4=;
	h=To:Subject:From:Date:From;
	b=kMjSumQxtqicurXBhw6QdNuBOPwHRvXaJDwuUPPu+OY3yODssJxIN5eCzm9Fm6SrT
	 Qw2vrLslTZoMM+qzGwfXuvr0HoxqqCoiAeDwVA0gwypsgDlxLiMcNRyziZVlHHwsxp
	 88RPwCYeYphWXDR5dwxBfSE6AibIGYdPBKtyVKgCNOC/x0SKsIBKqonqoAHnIdqN1K
	 +VjuC2qgUBCS4QNuEyjZX1snrPIOFp1H/dbC5r/6WHNspEZLzdH5kSUWo67xqI4Bfs
	 M0hb6rKWVEDR2Ho8vQdgcyklOz0lKyBWMvb9PCgu0mRs2QXBl8gfqTB4YOrZphbZ2I
	 lkwnlS5UjZzDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3385C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 16:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168157704583.6721.10663225445161881893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204c7d792182a4b6214f0139deccc0f1671143d6080ee914f4fda7aad9e422c6
Date: Sat, 15 Apr 2023 16:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681577045
