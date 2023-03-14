Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B9423A0
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DF2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678775285;
	bh=sH6AowoRlJ4HklwEnsSUs8UdWzozYEp5br4vjGB2aTg=;
	h=To:Subject:From:Date:From;
	b=A6D6zOgmo/7BEF90pu6deABpcLg9jf+Imm+PQjs3IKY3t58ENGdXj6TtqAc8vRS5E
	 X4ljp1k1wIDOluz2AmdJDPThz/sQZb81jTyy4EjV03h2v4QkAZhP81pwqjHc7Id9mO
	 ceGmH6xCB2xN7FR3xmrEJCoWaIP34nmSR5ReUnajZzzg/GW/IZPzWZD0hY23HB5nOa
	 eCBnQmLW73SY5WI0dCZVULGnAPpQdJl3BC/bN9mJglxncjuA3xyOSMn8pT3I+iJiN9
	 51Q5TQ9MEkguOqZbqVgtgMgzSn+VrLGlv6pzD9wFRw6y8WVC8WVsllWvZaNwWF4+yb
	 6kL+KeoDoGj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FAAC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877528574.11549.2971137909759884111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53713a6520f654b60f80f00485cad69f4b28e025219d22ab2027b53e4addb3d
Date: Tue, 14 Mar 2023 06:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678775285
