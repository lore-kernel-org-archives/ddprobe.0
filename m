Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D83539E0
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8VHDKx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE61C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703198896;
	bh=jhqV9rtNTGD6fTf6fg1wjI/6QA7H2P9fEa5W/N8sBR4=;
	h=To:Subject:From:Date:From;
	b=B8VHDKx6JlgqwiGRun7yhKuLyftbnd/5Qv7Sq7pIWkJue0iAYfjx3TPFugWl4zDFu
	 RKHELVAbgxQqztQHq9oynmrQQBvm/6FYylLAcErg7ueA2TieMxj7BNJDLoN075OKF4
	 xsDR8THvMBMbwrMh3JUcJOWJeN8gzUl1UD4HlraGTjm0nYP+9yYrBshKh3gCRqpf4X
	 ImxRCjGBPpVyL0w9qRiMg9pWnsyhOPUuFYknWGz0ljmb/ja62xHqlVgDgwSh8ThIaH
	 7KGx0myaFJm0f+KlYtsSiuQoenajjME0AQdKflleMLP8besI+tDgluNekEkf+z0zC7
	 MOs3umpNcM2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643A2C46CD3
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170319889640.26436.4800966693631114475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d5b2a32af11355ce6b32b7548b31059f5c84c6dc3482c5e66861b23ede51bc
Date: Thu, 21 Dec 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703198896
