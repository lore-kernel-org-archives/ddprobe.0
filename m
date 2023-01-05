Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D069D290B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809B9C433F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672943487;
	bh=wENnxOF1ixjCa/J7tryLR27ytFx81AFydreHO+J/K1M=;
	h=To:Subject:From:Date:From;
	b=Pj0m21m919QO1zFQWum9l8OGc9FhAHPXLdhzLVWmCKQzW3B0fFuZsXeX2FSVBhIfL
	 vfYo28qfSjn/2DbnhD+YPfI3HvEDKTGOAiYamh31RuE++yIFsNw6TBE8C43mvNRtiq
	 lb5UoPZCKK7uYlWWrRpmEI7s8pmoLQpj3Il5vWcLbkyyoAIJgQSBfBhJKpG18S/Gi5
	 sxiNJ2vlsTkjFnIJHU9TruwJzwYGO7BYRriHIzRzq7VCD3/1kxKiVRexl36Ylqu43m
	 /fDNNmTrAW3YehfZIZDU5HSEXuguq/OroS4g+n6ScTSfTHqn7mjgPj78kPJC+N3NpV
	 bLS/VL3NlEeaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663D2C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294348741.7297.18130488556716560064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6075c8f31800ebae055fb2144fbd165e8fd53a6c992888a455aef09fa2a8b01d
Date: Thu, 05 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672943487
