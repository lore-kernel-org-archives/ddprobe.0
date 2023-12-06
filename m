Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100E61C11
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDppvjbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D49CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701830896;
	bh=ZO+pWWdQbTeSXjkoFlNbvwwnziUUza6M28tKt5P2ELg=;
	h=To:Subject:From:Date:From;
	b=JDppvjbfm8ajCeBHL/rcxtwu1DLd0LdTpNwaMBmV5v8rA+SVTQQc4wx+3UWoZgAcb
	 TVQAJ4uJNbIIV25wQl/RAitbX4tQYjY+T868FZFqoUqEISNPFNNko1WFpGXZGN2Ofl
	 CDSRadJWXZJMptGerpO8GcY0zsH8+qoZNmmk1+joyiy7X4kx5fxkJOWqZPxnb+GslN
	 I9FiZvZWzg5aOoNWWnw/zSPfm/ii7k+s0wK0XnGu1m8/RG4Iq8F7ggcVjoZ6OmiYCL
	 WCdfDhYVT/Mx+3z3fG2zTj0C8B1zV1rLY9Cl2lT+Yd41gaeihslHxRy7XWVdxrD2+3
	 vfRlYPrp71PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6126DC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170183089636.24033.6339435722240223413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3622838de1a92dd3a914c53d6b0c3259b0a47a435fa3f340f2bf63fc72cd30e
Date: Wed, 06 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701830896
