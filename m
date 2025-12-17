Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5BC2DA76F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765952034; cv=none; b=IPtcHX+tyfMLTdg8/JvpX1u8cFuZNO6eo89R5f3GPkmTxy9x4B+iktQAy5dE6h1FoNNYTqTw47+M8/aWWJOsuadnkO18rKdlZwVWWSYsjwQtfXt+153M/eNjBYO+DAKZkuQ4+t3rlcbXD4DJ/weX5XngcZdbP3T7ue7qFOqzCYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765952034; c=relaxed/simple;
	bh=Nek/vlWWEyJH0xazP7HmnrGYzx0RzkllH6VCrmE1PZ8=;
	h=To:Subject:From:Message-Id:Date; b=e8g2uFbMXKmEX/FOqJlXVI7IWQ/tw2w9tl7s9CJ4gqde4DHtMNVjUG8QE5+GJjmIK0imghg+JDqnsVgUcK7aJUMYxJequd9QHqSTxgKQ8XLJcRH3cS8CcCMga/A4LvSCQuo9ePAAsw8G+6pB7KCpozR+XNNfix6Upe33flB0uvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfyMSm80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfyMSm80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D73C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765952033;
	bh=Nek/vlWWEyJH0xazP7HmnrGYzx0RzkllH6VCrmE1PZ8=;
	h=To:Subject:From:Date:From;
	b=EfyMSm80PoQOi/iejCHUC7NDKPE/VpDjeI5cUWg02VgNM81h/Ff9YLYolopzo283l
	 0sdnKXzhxu5VqwNQBOUcoTgfBd+V+frLJxWH9g6WS9mTtlgSrcvVhjZybRXhRzk9UX
	 Wa/ZZcZE6Juyg+wvrrVV2vbpLk82rQYw68LW/ckK7T+7x0wzDM0ctgnkdIaiRx3drj
	 NRh5uI1U4TUq5y6yE9iYFFKMJYqz5ortpWL6gqsDSMr7+lLrzOgwcq+pOt6MPqzC+q
	 xwS4SmMOirO1Srr76+Ccp69+OR+KFEUnBctqHB8WxYwH10g5k8+eeX4R+XAm+Y/AIb
	 UV9CfWxOggD7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E81D64077
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595203358.11307.622522470638019550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddbf153aa52970cfaf8cfcd0b26b886f33050a6680675bb76eca8e6843106d4
Date: Wed, 17 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765952033
