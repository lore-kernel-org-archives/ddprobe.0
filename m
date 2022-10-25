Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAA86FB0
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69BF2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666723253;
	bh=hoOunZWOz13FLxIuReRYghMIPZmTtMylIZE82k6ujZY=;
	h=To:Subject:From:Date:From;
	b=ft6GcgM2RPu8qw6Qw+jolN983+VhYqCawVpn/eG7QTA+lp6bDvwsQ4S7klmMj+j6V
	 KRn37/agfL1MUPkDgMyg/7i8jiX8CP+JWB5z62EyAGbsIJqaCLpcDUNnLQuZUeC/nM
	 EJGhAosu9SrywjC/gURiQCqxBZjHg9wUqA44WSac+rH0YDF3xm0aOVP6VItm26Sep2
	 jdZY4qH9IPXTlMI8Pes508KZCb0DoCPwlsh+cgG5hJLa4vGT5MbcjLPgWj5ui0qESY
	 6tjAmJ3MWCwfmpB7ug/JSgnnHd4fU7kFc8NXKtsbVAdVwru7K1LXwGjOtyXnHB6Tyh
	 bjTiZslw+7eSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5184EC38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672325332.5617.15337608779925156067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5c3029c94fe04e8d1aeef60cc592a7429f4ad1f9dd4d42a0c883eec6cea182
Date: Tue, 25 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666723253
