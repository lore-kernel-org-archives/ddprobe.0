Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427253C38
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E392AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674237725;
	bh=MUe5svHW3oKT5A1XDcejjfS9LosFrTicAx8pJas7FME=;
	h=To:Subject:From:Date:From;
	b=OgllWlLXas3f15yMJoJRe/Kx7Pg+rtRG7xK4TkpzvuAygRp0DVNRKUQztU91rv4YY
	 bw1M+2mgpfZXRD8EpMGpTR8h/P9b1ba7RqfqRXmXPSEzveWqEf78vr/7iBQcImJWbU
	 14uuUj6ie8QySUT80R3lnByvQJK2QOSjoyTwgEE2b+QTZ8zxexRzbIc0zJfJiKfUCk
	 a7uESsnbdbmBRI+FISgT05R/OnWi7tc9btdKIS7rUcLeIFi8WyUKTqesRI5D6U3gZg
	 7iwfK4M/vcCb+znZGm1NIrGTEvbL5oGZODoSGsqqMSh40KWo+Dt9m2qbB0SRxSVL9S
	 pHX5u0oVdc7jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2022C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423772577.19691.3506735928094096121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0919246c8a4956f1fc37c86050ca7e94f687264d9e3281720d81495bf8785a75
Date: Fri, 20 Jan 2023 18:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674237725
