Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1991225115
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcBF8w1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A02BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699912096;
	bh=3/JJT3hRjcGNQ0hyxFBMQV/50L9mgJ1NqgNki5BsgPU=;
	h=To:Subject:From:Date:From;
	b=BcBF8w1EvRLI+n5Kn+UTjkCIuUUBZvZ8hU9TIByKDP3kpHnT7mMkzhX4P3Mvl3cx2
	 SyDzUVBx3yfw1ynKZv/I9wJLwVtCqA6EnM3SJhp+bn5P541JmoyPE5rq7qLTANkg5q
	 SCbUzmy2lRLieNRfXxz9twOq+4yJ1IrXeIvLNDZC7WMBX68mh/k9geaXXJaolIc+Ul
	 fEpE0L8b9N+/Iy37E2qZsCOuQM6aPyl7yc4RMVxuE4nU5sc8eHJPyNgFk8KEmpNubq
	 6iIUPYgxfsBXaSUAn0CQGaaPVMYgpu8p8EFq0VqZuY1047LzVf8xthne0yqBIrOziI
	 DXD0rESXJJ4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74663C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991209645.21517.6916879625679014373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcfa5ed943ec1cf3fdef92a8e14eaec378d93e59d3ce110682aab0118036c53
Date: Mon, 13 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699912096
