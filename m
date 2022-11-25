Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CA833DC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F70C433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669382454;
	bh=TUIYm1bpEAi9/BypcsYWwiUOdl+Ys0mjcvqCOq1g6hU=;
	h=To:Subject:From:Date:From;
	b=PPEltFfqY6/Nf1F/1IorVhfzqG7cWAXJ/i1oB8dCGH745314gqB3ySSzAGc8GWRjz
	 oK6Dlw7DLCUp2N+Z0ZCc8qWfveynPvg9gqGaXPQWZYMOImU/YVa2CicrGHphieGx9K
	 8WKnyhbzIzHE2+S7QG/V0XdnvAemkIB+fhu16zM+viJ+vJuHmbljbIorWAQkK/d8iD
	 MupsO+2s5HJObQLTJO8xQsYTmSnZZKRt/a/QsIUOQySAmCMurWCkROdjNO/qzFSgQV
	 TBgbOtWbkkC3QnxIyOh0rapwclSmQ7ehLtvoHOXwRjkyzWhewrIALKN+5YLNI9XMvl
	 dCKjSo/s+ryXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF57C4167B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938245435.12803.14646041041573612235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9c198590b96fdcbb0b68c33e3509e47c3106c92e9abf4cf0d232f7fbb4b4fc
Date: Fri, 25 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669382454
