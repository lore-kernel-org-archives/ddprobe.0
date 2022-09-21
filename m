Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBD91FCE
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD73C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663758053;
	bh=XGbxlv4pM0f0LFmuG4U3vZ/+HspdiPuI37GDSGEpgl0=;
	h=To:Subject:From:Date:From;
	b=RG3BhqSk8TTEAeIVJUEdBfxaEX0Wq4DISYYW0ik6WTRTIvFZFCfPfkk3nePaWqHXN
	 uk2577K8VKJJnZAra8Ibg7RZ5in3cbWMqrtmaYt04CJnBqlE+X7twCKgBuqgNXCFDq
	 cKLjsPHw2tQHBDHRY/DTJaokXVLeJbsjrS7nFmXeyjaAkrJo07YsezQPwxNO7/7cWv
	 EyVTTjVWH5DguKw5mNRtqHfDq77T6Xit3LPzmE04mINSFszXW0HkQvPg0HF+rYPUnE
	 TJb0ZimYiqoE34paa347FMbW95p2PEYnLNt3FvwybY9WX3YZfWst6j6PFUWUgJU3bq
	 BQDBLQlq0yGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56646ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375805334.30380.1048271345803238585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4ed56f0e6df326efc43f32b1df8c19e99bea97082f7ce110c1e7c60285012b
Date: Wed, 21 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663758053
