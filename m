Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA732F36
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790C8C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670540487;
	bh=LOzaS9X6SQyo2MHrg0weLez/RW/MSynpqzqxYz7rf1Y=;
	h=To:Subject:From:Date:From;
	b=r89q/8KLmgeCV34R+zRJCu+5/bnud9gDjwAZ5rYfzGnFL9sMETNQOiGJMkmR/J2TA
	 FQHl/yuFOHXD4jSfdG8sz5eaVHvNW6O0IE5VBE6lrFIZ4FJQglsxnwkPhdhw/3pqLV
	 1pFXz9c2rO1lHfARHBnI8GkYy0/L00dRNBNEwkLLZCJ8afJwvrXB595TUC3g4Rxz8J
	 5bIpgHYQhwWoJJp3mUt77IbGynNQkLcQtYabeuodnchyfQjI3IK7InOpEszr7HB3U3
	 7+GsQWNKK321Z5JTp/r8I0JdNtklOMnYUqmPfLU7ufNx17p+xSlOKPXwVsVP9hfnqP
	 j66HfefdZzO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60538C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054048738.8883.1151253917678723597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9cb8aa03801a21185c2c746793011360735ed744f0cd6cebcc865572fd1b03
Date: Thu, 08 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670540487
