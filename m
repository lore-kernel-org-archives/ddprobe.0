Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFC79D3
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C940CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695621908;
	bh=NwbAeHJNwuZGpJGztQQSbj8JTJl/stmkBkc11HQwodw=;
	h=To:Subject:From:Date:From;
	b=BZXvYngaaByLXd8BanJZIzb+2KiBQXGhsoYwB2WcvYULCLoVTiFitg4v8LlfLWBe2
	 T2Mpm78BIBqMWamdYjwSZ6zRXPT/6tsMF6FcCA6snVo9c8Yla+9LbUg8CjJbQpc0KU
	 NmA5EvrtWskDd9tnp8r7CJLt7VS9J/KxJF7hUkS16rV43ergFPd2EMm8CzjAFMOAlq
	 mGXy2nOpHdWIzOTE+XBqVnM9gbS4Cqx2vX3+7Fb/1+yKPn8ygHkl87JE8R8qhKPDtV
	 hHWjFDIbj5Ntbcr3CMypBgVcwBwm09usHXMoiFyNk7nfjK5Qd6v7RLpD44kaQKrpH4
	 8C5JgU2auGQZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC00DCE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562190869.23211.17040119920798016833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41477d8be70b1cf93c468e002094a3a0b92d0658cb00665930e73044386977a0
Date: Mon, 25 Sep 2023 06:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695621908
