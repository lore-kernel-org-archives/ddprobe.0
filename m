Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33637475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB2CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670884887;
	bh=Y3yEH3dooUn9gBKL6HHDlKUb5jyh8dCmaIzdE1N07Tk=;
	h=To:Subject:From:Date:From;
	b=ts+kGxIEo2YtsBBnhcdMHWLwNiMqeNTX19NkDiSabUq+Rmd4GRCxZ3Y0aOnIHoLoE
	 WDhOlwHuQsXVHpBINBYIxwmDrF+wlGr7WIxMtgnhUpDEF23GE4kAaT67JyzpfpFv7Z
	 QcgIkBChoIHMNae6MFKBpZoYA9V5aBGItuOcVewkre9qgug8qLBAiRZIED5kaRu/kK
	 6kAuzN+byo2hQiD9vB3McW9XzOVI6OdP3wA5dslROmzWBpy6yybM6w3cG688Nm7ppa
	 SmiQnOtlXOeRUZFOnObpUWqj8K3cEBdAkjY62Y2U2ePyPG+4LXw4dekkh9TY3gpTFk
	 ym6GxNpwbuC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675A5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088488741.11839.3506537912486497572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16617b109d433ec6030043a55816985dee89b755b10d430abdf4fc2f9c0a16ba
Date: Mon, 12 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670884887
