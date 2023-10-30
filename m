Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B919B
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfKz2QdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94054C433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698641296;
	bh=Pw5UOBdcyxJUJunDyfsag79NgMjO88uboWKpOotclBE=;
	h=To:Subject:From:Date:From;
	b=SfKz2QdX1keoMBaaNJHllSpaaRwRFcZ4bWSM4KbjyIY31wT+DkAdSM9CyRjDZLNyQ
	 jxVT0Gy0d0SQkmTQn5Zs7v2YiQA54sSNHmR/P/6GpExf+oQd+l1n9qO+kTBGlrQi3M
	 MvP2xjkKGbLI0FiJ8HxLZNQuIsWlGZBDT6SrqagG9wX07a9VEpdYMPS+ktDj2zPege
	 f8NpHpaZ9wWH+mF8ioT0X8d9NW91bvLodSD45kr0GbwO7TSm/JUWkecv2k8fbk2m0s
	 0ufnd3PNGox1wYAPRO3VWR6dQOghOGxqazZVNAgkQyvu2WHqog+gFrnLlEjeAO6lXk
	 Krg5WcIBXtlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6690BC4167B
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169864129640.20017.2868046004649872451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489bd66f1cf1690b8bfe96514b4992436cb57b51709174f864c5e2f9db7b0248
Date: Mon, 30 Oct 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698641296
