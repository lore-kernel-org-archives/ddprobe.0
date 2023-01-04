Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC5AAD55
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DAFC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672855287;
	bh=VIxZXGERWJCvS9Fe14GFn9/bTnjMm/y4rLp5zmRihNY=;
	h=To:Subject:From:Date:From;
	b=fBHda86vLCpUpaObQ4fiAHoeoaEZWeOMzOrCEn2HbQZCa1pREEEQhva2RyncpbxZw
	 RPlOM+SVXDc91C6WoeFlHeokC0OLCbAVO07Et+ajUBUDQW6LuuEgvfdvBj6A+U0UGL
	 tS/yvOSQrTxAuddW6EWZdjg+BK/MSpGtR1dCR1lshzCvFz+jkNkfaFLVr30ypW3ZmP
	 NOdJXf33KjnAAu08MMXNJive9UjpxkcvchDrHrUqhsqG09BFTUbGPMnF50K/Z/LB5d
	 NvRKcPwN+BwwR/TNNhFJRUlaNYbURQ9ljLM1MZ+fk2RAiiA1A0ZRahV3ouyz6Hrcij
	 PY039fwKmTZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3F3C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285528737.11824.7699323334414090096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b61cea86b0cc1223d8ff8aa6baafff9d51374a555879a08ec9f0c4243bbd95f
Date: Wed, 04 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672855287
