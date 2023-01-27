Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CB290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0522C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674853985;
	bh=uUaVBxfsx6tS+4DBzLUYGo3h2pahOFjdzTYBIa/6zXU=;
	h=To:Subject:From:Date:From;
	b=SrQ78NLacUesHiKkeD1mRSi15iTxnqyN9xy2Oshpu7SwQSopyhPjubpql7FOBI+/u
	 iPnRh2/CqBmrccjXWcGvDvgjFfPsu9J49YrN0erewAHpQN09Ddkcelu0f5LeAZyt9m
	 1W45/LmEmiy9YGcHA7MIJ/XrIl+8xuJZc9i6QNO65xjYkBqgUOWOxMHQilk7YuNjDT
	 qIQ8bwVgEmH7NT3WbHfTMfEDm+6xu1twr21re0mTX9Y5dgUQucCIF36l3F+QoWjIw/
	 6Uoe3dhVVbO3tVQmoPUrPpTBWSDuZU8CAaSp/ihDbiUuFeoE2reptLaowX442/0/YQ
	 B9pbGYE2KEGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51E8C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485398573.25614.3920668216815902554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990690e6f522f7682ac4f6d6e668461028ce3ef266a4a549bc2b3a32d5b2fe9c
Date: Fri, 27 Jan 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674853985
