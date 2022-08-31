Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD65613B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC69C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661983253;
	bh=9XD2UUrRFIf4ycOMHElZH/8HOIr+jn9Q6BPFdab4cnA=;
	h=To:Subject:From:Date:From;
	b=FtoyceC4lTaH6ktv3026WzgmTLx41GHXcqRIgqrwtphe+UB2E+kh6ySZqmvTOpgXy
	 wB7LH2etJIdrbW6V34dff4KCpeC9xhHcgQaeb5SpMQgmWG4NyPVXayLFkfKKLMW4eL
	 jpE4dtZZJS4mRHNjEzbOy3o15UT/w4TtDoWhPZN05rpRvOGJimyoNxI20t/aXbmhiD
	 6tn9jKs4v5yXnFNiyYBWWpD8HF7mwfAbIe4QiJUkxudH0AfvMpFVTw4fpdvACBmFC1
	 oEzlNQmlDFouZ4Qhhf3m/DrFeeWJ8ke48/Fvyjx+yiOVgrN3gSCMnOptwJo4T2HKYi
	 pv3YqKeqiNVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679E9ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198325340.1328.1162951124123776445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbcc61fc148c0df9901140a69cdcdb2ea92b147d73fe38b95bf51666ddb7f0a
Date: Wed, 31 Aug 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661983253
