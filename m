Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45EABA24
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B54C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669748454;
	bh=Q3DakWSj8HhFt8bKzvjiNbU+/aAfWhvtW4j9u1h8DbM=;
	h=To:Subject:From:Date:From;
	b=OZw+4BlWO90PXxlTMiqCMYPjyBHMNb8ftChxeTgG+w/b70nCGt+LDx00io0uP3wOH
	 woLesL05NggWni7EVIMIbiB0F7BHkZgEJfp3kX9FnHDfNnXpSBUjC8srOkE9Qel0AL
	 2lzq1swPNMFmMETKBKzhZsh9R3nK1vcp/+50Pq+pJqFuUQF7H8lIW1Q33gjlA3nZmr
	 1bfI9DG8l1T8hO3twWgLPNT9RyF0chtSDo/nTV6vDdLfa1mgg6TWk7EPYww3E1PGbj
	 N5KMMWc5ih7bb8jnS5269/BFem8qsiYcJdDD7OEbewiYjZTE4CnvvkIYp+H73RCKt6
	 6BxT/SayVF2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A40C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974845433.7229.2553521542831664419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea075a249597de703c9dd4b03a327b612ddc7723f6ad282ea31f11160aa037d
Date: Tue, 29 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669748454
