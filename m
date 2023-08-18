Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F14DA5D
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEE6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692340448;
	bh=ZvCYlSYbP9U2VVHKXsW5KSZqoynPtqhqUb9lwOyhaCg=;
	h=To:Subject:From:Date:From;
	b=kJgidXzW065ekbJqUMbVMqPRfB2eNKXGu8uU3/6qRXRsP45dJ9cWZh4Fa1ccTqKvD
	 jXUsuvGaMkuHWtx4+8uMYndzpXre+R+o4fs9rCJ7rzR306PetQdCswMdimykFfO7d8
	 8WdTw5b9LhpszJc5++tM6wYBhHYqIXfD8xNDLZdyFaXEeY4YdeYI9RULYH4xzTQwES
	 lmeoAQ9kJKmttALWX1HYgqv1rG1rYXIm3qwAa2srhzbvpfpWCARWQwJ8ifYCX2A2DA
	 +IQU4YqBoKa9CjI8ngrAm0ePmB/AiyfgHgKxkI1nmPaESdnddxnF1Q8BQDXE3mn4BV
	 dZe9yypYKMtCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66B9C001DE
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169234044869.11584.12601540984475000705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17bbb709750e20413e9a95c6821875a0ba17a20b462cf46c008cb93e25448a5
Date: Fri, 18 Aug 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692340448
