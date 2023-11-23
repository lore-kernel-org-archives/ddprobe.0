Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5B94AF67
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnI5snj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8298CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700783896;
	bh=xgyZBBR0utyKVcLebv41O+1nD9uUWodvlWAV55SDUJA=;
	h=To:Subject:From:Date:From;
	b=cnI5snj5RjjGJIpBnZP1LLjlrfX6GfqRjJVfBhqsn6sMTdQk5PS3ncxavptO2KB78
	 SuDA926iRGUDIWG4YIxobvcKwqCEi9bWUv8FWQbllBGeALPytE9gQuFzJMhtsLJHQm
	 oCFg+TrCCAd1nKJF17H11fWRyfnboLkTBo2AZX9jLQ9plXXEOBeHpw5hCaRk5Bx5d4
	 3z9kHqP352RP8E5oTc0rZBjmjyXPROdPMQwms4HZvsuL5aFie4FT58K1M2Jl72tN5I
	 hHRyYnci20R7dAyiGk9IGu9wJpMyh24Xh8Ry3RkLBkRxqO9ZSalmAxDl/+G9h2BI/h
	 lTaS2JPi/JG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D91C61D85
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170078389638.1012.104911306494107954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d784fa961bbc9357c951f6de21dcfd8c05795518454d308815bb878c8e6b37d
Date: Thu, 23 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700783896
