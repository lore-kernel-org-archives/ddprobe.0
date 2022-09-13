Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A043C0A
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69333C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663079453;
	bh=L7ML/wV0yzZ7gkimyJ9d4aGS9J+lyZwCiVo5FpHB2RI=;
	h=To:Subject:From:Date:From;
	b=qIoTE4jYpkrOtPjIVmbuEaTTmMrM17MVgimdz7t8KzxEdpVijG6GNq/FZBNLWonVb
	 04ev1e/+vAZNfRoYSf6zSNriCQsWyvJ/x742G1lHQWa/DZcF3//zPoQr8IhvXVbLHu
	 KZzssjoEYDFIAijXan4bF04S3gR/SavxJZ5gZ53cvoyV5UbBSN8z3qQIhitQ4TOilB
	 W4rHsogvR0D9latuF/Kq2iBQG+YLbiiECpTepTXNE0taKikY3nyWawxwVfcmNWuJEt
	 Wk0tLlQsYaSeeEYq+TnX7LjkE/8bXnmpvVUEpGfhb6orH5YHQ0Ekyv8mPw40Xz3dkc
	 zuQ9P12mIPrEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50480C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307945332.17751.9603408292743979309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debe3576ed30d165aff1c5345065853072069dc195cf54eb426a9aff25c35d8b
Date: Tue, 13 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663079453
