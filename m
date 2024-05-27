Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCDE7464
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716783863; cv=none; b=n7uWB3ICVRxcGIYFidEL0mt8Xmvw8/X6R/Tl5jyLD+xUWeHtOwUj8OP6kM/5d/xUIyUXxhMvBHef6KZu7bjnrsiQMIuXahiNm8K8GFlQJZRUw9iTrVibE5O/DTBYA52k8mTRjQ0VST90i2tv+Gg0WnN4ciiPjdTZ3PRZ8nZhNCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716783863; c=relaxed/simple;
	bh=7DLG3nLyh2SESN9neEN2bWwC052NJ6Ncgp/LLfr1OnY=;
	h=To:Subject:From:Message-Id:Date; b=tDVGSGPfdKkNxI63YH0fDq5lyWcEgduNbLMghQLwHinxxmH/3+FHaNnuQ31/0i+CWqF8aVODRhqPb7qFEn6lu5tKnww3fEtranJFf6NWLXzaZwLEeEKWGt938+ScKQhxH+rw+C3V0IU0GVajbaJSv4LMf4iYYKBez4xifx7j/wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faOCYBu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faOCYBu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A744C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716783863;
	bh=7DLG3nLyh2SESN9neEN2bWwC052NJ6Ncgp/LLfr1OnY=;
	h=To:Subject:From:Date:From;
	b=faOCYBu9c+5tUR7eOYX1kGSEJtE9nNTKVU/Hxvc5oJsI1JIGJzRvM5GDKv+YKwtgs
	 LKvrCBq6CA+ht9B1faJTyUiRl0/cs0HBp7qiCnqUANQCDTJqhpn6Wy4JPOD8tK1W/b
	 ZPwt4XCIUlj89Xo+rE9mT93891LPEiM6Uvn6U4sh6YLE+1vVb9rYFSVZhi0J+4XJ59
	 SJ/Q/YCKvzB/EN9yHq2R7e+Q4siAUEAmHwyf2sprX7EyZthVI8DWwJVzyNOd+aB5iS
	 c4tImQpWevzPg67aNmbB31VtFg7fUubz7eXWEXeIgTDxA7BBiIEyc5VOga7tjeJanp
	 SYMsbwF0OgBaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D10F7C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678386281.25005.11972956069113468360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29738d2e4563c1a613d680ca96c968d96f2ca983808fb430b8592a5dd2688500
Date: Mon, 27 May 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716783862
