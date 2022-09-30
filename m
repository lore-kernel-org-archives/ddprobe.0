Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0591363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79073C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664502653;
	bh=5znmSfWQwPwev9PzUJDLJKx193QTXIIsSH/8BqBVrv0=;
	h=To:Subject:From:Date:From;
	b=CCrMy6RWMQ+lzy1xssihULsS23mF5AqgvbqgEcP9udhKaHlpscV4VVuutVlbsPYjN
	 gyK4iP/eJ0xTBN4U4xwpwm90HnxC2mFN+3nX3izKoysenQHDiZ6sMPeYTtD1bxEbPy
	 05td2/D3v75VtVap9Vr9KWKkIZ4ri1IsRVV0/CoA82mzOwZB6xRduBOeZHJEJkr7yT
	 a7RCsvxbiC1RewWiaQmxyT4NfOp8froYN9lcg+7ejb+rCmr5bjeC00OoW/LKYRIvdp
	 XBBFGXRC6nkQ0qZFcWMBjqj6r+ZUyGoTmH7E+cSjyw5WBe51MmMqvaZFLTkj4tYUGl
	 eskKHIpTvj1jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F988C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450265338.2243.9454816442523785085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da1098000d705d348bf23073398c26bf8f3463f704e6804c75d028a040eabad
Date: Fri, 30 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664502653
