Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB615383
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 14:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26266C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 14:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683297426;
	bh=nnjDic8hW7PsQQWYHWaDtltnrY0YuEaSMg+Qb/sX7OA=;
	h=To:Subject:From:Date:From;
	b=Kh4+fPgTrtWgzD86XpJ6bTcYEfW1EPsQNrWMfDguRlf8ugyNq4Rhf54wY0DG0N27Y
	 RcOHr056sL1vjXX8lMk01QjekRSSdapfyFmdhmTbZf6ItX++dBTzf4nTVbiX7FKXus
	 vS/+xPktkOJHdGMcutSbkJDjsWPQjHq7ytwoqQDnMkC1r8cs4roy/BXqkgza0RviUd
	 h4v4v7xqYEZQ+6o0JTzF4xIW92cQphO3lR4icXb/P+BvHHxCoCGHo6JiNJk+OB0EgM
	 D8OcLVzU91UV2RrFv0/qBBMypV21pLxq/er8zqcS69vIm+QECTIOOx1dI0ztGADvy/
	 mvpIL6LMvwl4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0394BC77B7F
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 14:37:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168329742599.397.11549618591563726827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9324e6453734a139948f71a14c28c5d8c4caad4a63b085642f3a7167e8cfc719
Date: Fri, 05 May 2023 14:37:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683297425
