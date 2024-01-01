Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39817C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n376FI1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90871C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704100696;
	bh=Jy1YKbzj4MwKQzO4wsHS5DnZQKr4Je6DEtyVh3M7LaE=;
	h=To:Subject:From:Date:From;
	b=n376FI1l2jOr7W6ODYAcmKpjsoHLHJ3XU3o8dHF3uI9SqSE6kC1WekLaqWJEHQjMY
	 t2MGv4dmxq2eEeePjRWJkaNczgIaaG/+XIsP149hJbEG450KeU+IEjy8EaKKJXlscl
	 Q+I1UevBcrNDgvHHsYBBIpXwUDY2Ep7ySKjohtUvAxtlwE8aV0EVN495fB928RdETp
	 FHjc3dbNMCNvHuvlv0Gj/Y9YMq1vQxaBJoJyozWaACYLQTzo1yzIHgb+eXGXTtJrzk
	 0uXNWsHRwVytElhNICQvAT20qmoPiqOOhSR1phd7Ki/zupNoFAZ9Y2j7lT2BqE8DZz
	 AbWa5Dz5ujnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F84C47074
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170410069638.13088.12731758312156524303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed2a7abfaa6307d3367e2b8a05d1004ebd0902eb0d02f20cef038dd86cf0105
Date: Mon, 01 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704100696
