Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77B263D5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B44C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672922487;
	bh=pB5T/JEQv3yT8F5X74degqRHJliBMgaotW4bLk7kHrA=;
	h=To:Subject:From:Date:From;
	b=quGzGKrmwN/KVjf+ePb7PugDIfzX0Lkt67hoxQov51BELR4997yGvU/pzRTk7XJ32
	 TXt65qahvi3ORkY9/Kuj6ImRRZA3EjUJFG63A4eqN0lyDhiXWjtN05ZakWty9Z0/ot
	 RJikcfMJPq+Vuy2GZEOHWxhl1caZUN5CcT9ym9+U131CfuifkkUPehLOrQx3znrh4V
	 OWLKEfvGmvnwXlQu+lVL/ITo3qUUrFPnNIfP/Mr2hRcowopfqhWdiEaWL4MdMnXyUs
	 b9aZx7Bjy0QjalVeL9x8h5TA0HWeWg1v/6ZYrHw0JcoGjxdlG4eHeElIBWYEfQFnll
	 Ac5JH8P48gEfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DD9C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292248740.29968.828919214897051034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8446d7c6ad00d9871979a1b3065f522ecdc7270d14d355c27c25a450929b442
Date: Thu, 05 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672922487
