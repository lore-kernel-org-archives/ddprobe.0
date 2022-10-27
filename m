Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B730EAD23
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6587DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666891854;
	bh=+/rokZyCETQ3KTuWXLrY2oMiO25tA5+ckT90Ql10xVw=;
	h=To:Subject:From:Date:From;
	b=GLFZ6M5hQiLnDAFyOw1bR8aV4KfzKnN9iif4jCd0SvaFH4qR0sl7lq3cEgVzcpx5G
	 TkmNHfXQy7TxNSHp0qNAnW8YSmsTkrqeOz865XIjRkjBAKMHOnrvideXAGMOrxewNd
	 kuLeJtzTGXkZayCAsinHr4HF/Gf0Ee2cVg8ybV+j8sS0PBg8IDULHEjoa4WveP6iIa
	 x0DSib63GaQ1oZRQvZRNdw4VLxyRTFqH01vJGnin2sfKSb5OkeHSmM2Bvx/pI+QsyB
	 OZh34B7RzikiCqGGpXFIuB29E4JGjRgtKKHJsOjbONXh6tYKVgQXzO8cU/pQ5YLiDS
	 zNw0uNvGLPOdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F45CFA3741
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689185431.23597.17804828510680503464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e597350943ee58e1539cf99ea20bde82b14895ab32eaa36c624050698499e67
Date: Thu, 27 Oct 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666891854
