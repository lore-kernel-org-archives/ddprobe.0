Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B124C157
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 10:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBFAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694429648;
	bh=Zv0+8+4Q952EnzCV8gVfAyhAHFJYeW7Tem4IYCJXtwc=;
	h=To:Subject:From:Date:From;
	b=h986kC6FsWgKUQVGBOPAyK3jq2tH5nfCWXb5ETpOEEtnWcAPsq+XU4WTo3IY9ckdU
	 1dQdhVypU9tXsU5Is9hshSJVxvvSZNnRkKySWs4di16EQ3pyu62hhPgCdixMqygcYE
	 ZIlVfgfwnkWUV1D+aF9a54EcOpUVXs17HvrwPmHQXVSWsZOhnRs2RFOaUcsr+sb8b7
	 8BWfQsPkNXyojFhzr1hjvmGvKCI9iN68nzh3n48KcJchxjZNmQIgCNscAZ4Or9cBzT
	 IF4QwAnCq3U9iHOm9vtL2rK2JmdCjDTauqngp22B+kK6Xrgo5z6mGiryYN3B6We5Rk
	 6Gbh6+p2d6I+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD59EE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169442964869.20425.9986509494173693990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a01f2558dacf01104daccda386c28fd76355938a03a04980b264f231b52866c
Date: Mon, 11 Sep 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694429648
