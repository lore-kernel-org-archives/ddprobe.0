Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2015F29BD95
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768813434; cv=none; b=bLMfcnZ3nsskOK4yKSbCkkCrZyCGNS8LB65g0jNu4nqL8Mk1U5Jt0iOhn0rUU/sZAbf4tKzccB+om/SoAEJ7/SXRcrbNhH+/1vOAgz4qLZ4akkYw8xpcOwXQxWq0W55lA4PhN8LxdkaGUh0HjHiE25V4CBIHW2p2Il1UjOs0/wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768813434; c=relaxed/simple;
	bh=kuhwX0mJ9Hjwcq1qh1AhBHkFo3KPTR8vYvig+hSbVqM=;
	h=To:Subject:From:Message-Id:Date; b=oKegMC02QN1/5f7Sm7WOsGRD8XJTf4BYMtzRVVr3P1Zas3+LOHEqVIDr1tJueFhYvo8L+MwGHPzG9cQ69QPtj7NTdF+FkpXmwhb6Cq0hj0KFFhqXLmzn1NHnkJu1o/BNdlbpYuO2W9oQaWOdwCq3bJ2eXng26LFGSuZGJYLgz8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dfw4s5oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dfw4s5oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9E1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768813433;
	bh=kuhwX0mJ9Hjwcq1qh1AhBHkFo3KPTR8vYvig+hSbVqM=;
	h=To:Subject:From:Date:From;
	b=Dfw4s5oqh938YM9SL4DIdNj/pDLfO29SbEHddEmTg9887zvRg1qwp+2Dz44Vvfezt
	 6285BOXrZzDp0tF0FdS6JkWQjZqygE8xxkkdUkqbgfIY0d9lSxf8ZjcoPfJgZ48Hfm
	 WSd2VJWOT+/vsMlH/hF28J0gpTnvbPpXVeykzJLem67ngFYCJB3E7g3f0/tWhg9+P4
	 fQPoYU4bQ9BUhKQLmDecMwfEVRvwEcu8+Vk+XOfE26cv7UpCt+hk/c3LBLDw0uklmp
	 KW23KwXQBP1Y8jpoBv0xToDulPxjFdA896D1IAr8zmWb6KEqJlaedTjoDKuVA1w7pU
	 6KhplIrg0dWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1ECCCF2C5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881343364.5835.5679506704534333669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb7f9ad2edd33fc154621318100b816b7aec8b947ab704fa35c707eae28a69b
Date: Mon, 19 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768813433
