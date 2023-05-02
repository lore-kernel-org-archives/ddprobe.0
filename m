Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4B8654
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 05:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE6EC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 05:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683006845;
	bh=ZvnmXcrIiKIIFwXjbxW6hMlj2G2gCvPH7t0sO1oV6/E=;
	h=To:Subject:From:Date:From;
	b=MgUViqEevZuXwUeBYBfPwBJ/J2r2O8SWHE4VMKbcxtvyrd7IIWGGe2DWeia9AqYLO
	 6N71O8EuK1wJ2HQFvZ5I+aKuHxy9xSPbYixNr5zyqBBd4xD5hs4ml2saZgWDJKRE7B
	 /d0BmDh9oLCW1WlSgsGUVmVosOgQFWVhYQYQEelDtBQgxpR9AFjNTxuJFQLXElnKtz
	 TJdcewFGdBxIU/9bi1ZAFlctkDb6RNg8Ukgh7MGHz3oMOZJwyJpbkndOkaq6/rdt0a
	 qUrL6ER+ZQ9DK5Ahf8Jh+gBAa7iT+W4dfQUK+gyWFmIqKfaELmVYPc9RodkXKD03y1
	 BX+wNsETNrW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B426BC77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 05:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168300684573.31442.12399671324176163107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b76a3154718ecfbd152ae6803774cd01e14b13f067f7bc3653e72928def9ac
Date: Tue, 02 May 2023 05:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683006845
