Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8F61C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B827C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670025054;
	bh=Q7uJI42cYRQ6ohi4Y5rk/rA7J+YvXF9Bg/z0WMtpEu0=;
	h=To:Subject:From:Date:From;
	b=lYCp/qzBjeBZPbAjBScBXd9VpOcVqvV8qqMRzXfIzP2IaBZLUXx/5XTbUg83srSA0
	 f23r5BvtpWtc5xDa1QSQ1W52MhUl5tBFb6EmTz4qZv9YWVLr++h9wCxx/StK5WiMYj
	 zY2Ui2azjWGmFLiu4Sj9Rdb90wDCUzGsCHV7cJFw0sJBonsBgUcaes6tz9eaIwkJS+
	 Izpi7sLMwIyNeEweT3iFLHA21WJLhxF4xMcihnGdhF0lU9ok67GqGH5TlVHgetAOdi
	 jgkH/vCJalfw8t8vWe3qu1FKM3xe9K0QD9mBwbxffIiwMSgGn0kaU7TqwSv1rUlxV3
	 UF9gjiZK9PxbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EF7C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002505432.13933.18200550358154972763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c690516229f85a8194a1de11432d204a666d350895dd0dc2f77ccbf7faa317b
Date: Fri, 02 Dec 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670025054
