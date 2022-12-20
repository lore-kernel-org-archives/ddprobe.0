Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98942CA6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6F2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671562887;
	bh=IijJ6ZS9ujk55szN/h4g+TUigiFJWki58BTqejRufcg=;
	h=To:Subject:From:Date:From;
	b=nZ7gIF5zWM3l/vJX0g0pELa1Uh+P7dJVYm7BCUpvRiQCVKX1zXYqQrGyEjSi93X5p
	 brhzmoYGQU6y+UbcDDgldqN5m7RKvgH421t4unRNLM6a0T9uddicPHhAA8J/gZuBlV
	 bT77Qnf496wXxt7X1K6jfVMm8i43ngtjfaYdlkHlv3HNoMGtGbcHnRkT/DD7F1icEf
	 pfurtoIxkwOV9myfMd4yThTUSXXu48zR3ZUpFa8zAEnV7VdVM+LAekHJ/c8/Fby6BT
	 QdvwLbAlTEYfze9tItgUKZsej5TFPvN5tTf3QKZVgLZ0mCK8OcYfXJalbhq70/tPKn
	 kYfMlEsaJR05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8B0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156288738.12916.11399888753730287565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f80c39c41f82e3a417c59dfb406118c30c3f5e15df3f661fdb35655c6772efa
Date: Tue, 20 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671562887
