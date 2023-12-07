Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037AC481AB
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3/o5ZFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BB6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701977896;
	bh=PI50J2NWbwKptevpjv9k2Cw9AyW4DvKKf/Fa7J1m+ns=;
	h=To:Subject:From:Date:From;
	b=g3/o5ZFiCX5MJgb5lXCHNQ/peb0CXzAmdZoxjvtpI5yzJ6FkMZxBmWt1C2dRvXVkn
	 np9SkhjZRIGJdDkeXIcwLrjTuBkUmImkjsSYMnzVUOO6NXRxuEBjTaMRWzcY6ZQhht
	 IR+mfwzZLbMQnW5ACAREZ0NLYhEWSzN/J5tOtwQzdjyoGgh1tGpdi1ZCgSFYOdGbeU
	 hhTITTzZt486myhNqns6hA7OvsnTPUfdRVqv650KqdKZFzK/F1b0vgf/ss94Y++YqY
	 u4GWj6BYGxVJNufnS0wrmTeA2xox+AR6nl9j7IxcatKYRL9iuB5ZpwNTzq0c1kEWLk
	 JMr2D4ev7sYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608DDC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170197789638.31331.16508551975987727570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f42909597c861a426677f02614156166097fe709d7c1b80d0c1b74d4ff53b2
Date: Thu, 07 Dec 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701977896
