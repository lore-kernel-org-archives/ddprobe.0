Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C8E1A2658
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735840554; cv=none; b=ucKTD3KVGegcqY4E1cjS3OcAVkbv7f5U6xgYGbUN3dYwdgyzme/OV3rufFTt5EiVxWw9MJ52ZhgcZG25//djXl62Mkmq8RW9DZVT2lpKRXguVa9ul7cnkVl6c+r3kJlL/ILmflQ68naYx7uG9O5ZqQLomHvGWMdLSq3S5bYFgjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735840554; c=relaxed/simple;
	bh=guk1oqEqj2XshKB1Ighbe6T+wqf07sZ6rJiMETnTGo4=;
	h=To:Subject:From:Message-Id:Date; b=AxnnWmR5FLFUCJpq+/nhjMAaLeuscpD58Qg+df/L7pKFw1BlmGIsJxvPGDYWcy1Sj1bl7zUtnIiUDr6tUQKWqP9uvONqoceUrZmUwwiawanPYju2ryyKzIuqQajB5+8TddQHr30f2R4X8P/FLNPLKnFwsyjyvOoRnYMcOUmEvbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt8hTBXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt8hTBXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E8C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735840553;
	bh=guk1oqEqj2XshKB1Ighbe6T+wqf07sZ6rJiMETnTGo4=;
	h=To:Subject:From:Date:From;
	b=Xt8hTBXtidFR0CW5W/HCSDTCAIftY2to5QxOQspnRIfVYSt3GXL017zKvcicPi0HF
	 VB8uY77mXHb7lWg+JtefuashgrdbbhKgJoYnXvySOiYEgBLwP2AGKJE4EqhwSTp8f7
	 rL+pFYpF4Tz2lkIumqyeC+nyMea4RHD1iXBUYIh/5YtYR4kqSokaYu7Tc0dCH378Zv
	 XFFN2bCphUHxJr3r7YMF4Z2cWK/cqvxpeiKRRCjURb+xbCo2HNJYu5nTrZzlqBlVoA
	 +k55Owl3gls8j0WdzE9c+bYDfSYD0ulwOCBcvbxpvbwvJMl1z44M3IINyFTqJzHRHD
	 H18JCD+/u8wpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91949E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584055358.3191.15911217417645731268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c44f1cd8780cea6727f635f0d8764fe5cdb64619590a1cb40c9cf24803012f
Date: Thu, 02 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735840553
