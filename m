Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632463C4
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5F5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674489185;
	bh=gYx3N8ewKOxhT7h5JzxKWQkX/CLLD6bh0J+RUiXt83w=;
	h=To:Subject:From:Date:From;
	b=ECq29CnqDPBRw2gHyzOUkHaTU8Yue8Cyr9UI7YTUG86rmf14m2ckOOF7jF/QZckV5
	 SbWO7Ec6zX+YLvQ/41Wy5DtnnM+BpbXJtwrlIdbmxpfbRYMoF4znQ1QjwUZBi874nU
	 iIxOsRwAF571puxtYSBgApEwXFa9iv1xwIRuBIi+Yr7qg/X+K4td6E0QcYAtNhwd84
	 ghjCXvvZDL3jz/pBPuPSSysXn4sh0tbu6Hr8orAmtfG+PEZT6sQcAUl4MNNo+L5Ztl
	 eDwxDjnreAmX0tNWYOexQ2GsfjhBoo4EQkER6kA4d7DSFOnAn76y5+FDApMtDtfIVZ
	 TX9WsbRW2k1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF310C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167448918577.15577.8023503865012657696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccdd4cb534440f9fa1f3b24fa3ab4c6d561a854c1a785cc9e67c7824da12544
Date: Mon, 23 Jan 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674489185
