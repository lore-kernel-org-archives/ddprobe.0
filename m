Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3569ED2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 867B3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671432087;
	bh=OVpts32Tqtp8c8yPQQfpi9h3agXU7gqpAKfUQuW3iyA=;
	h=To:Subject:From:Date:From;
	b=izCv96Wo0OaXBItWJk1dIUm6VUgnnOVnAyIHCbsnmjhgehDRXeRJh4kwcRTjJ2aw6
	 QkFYULDDgAKbcMmglR90TcU6w65682F2uwa3+G6Ar2loub9OmB4BoerC9vN3uY88+8
	 8fcMl9N0/QgOJiTsItwViGtioM9lLJ/R/I5QtZmv/efOcQdKz21cJ6Y+uGzx4fDaC7
	 jnXYYxwc7F2H3n/6gSg70nZC/m+7rgmBCpLsn4f/asC5yszzxKlcMQnpX6sGajH/56
	 ayj/SljdGPbANZb1JwgVC6pR7k67NsEaMHnDAklJ8iL0AzLzBCT9ZqshQdqHvEntuC
	 Dr2FJPKRX6gbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB29C4167B
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143208742.28283.8135086070025379481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6db42902327729b0430cb5b65308ac2365d482a9b30957ce4781372c0387577
Date: Mon, 19 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671432087
