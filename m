Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A53E2F5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B55C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681084865;
	bh=PnXKeI8kLMA3UrxPT7GK9E+3/RsOuZNizuOsgFo0JQw=;
	h=To:Subject:From:Date:From;
	b=Cb60pu4bHROlVGlQULZW6adQ1RkUMIb82T7hJq5ToJU3CukhvZ22a+yqAaA8oPKHK
	 uLJFmW6DHi9ahD1cZYN3XYxFDkd7QFtU9UWrNgvA1MiQdSkuXT/dHGncASxBo69ETF
	 xDxAr47J7olWI6lHK121nIkjI7KWYS3frEWmz5s9JhKCHxtWSf9/5LYhCMBcmQBZg1
	 9tOfXfI53ikUGhOvzxGV44sDxHYJb9xEyJG/6x/tV7viQIF5jQ+aVHXx3L7SiFY65R
	 Kio5boGIcU26XsNy0ml+RM6G35Y8EVKwkZrMeKOnLP4wBDZNumOCHq/yMsnhQ93gmC
	 k1mnU4ffwp3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA982C77B6E
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168108486579.5772.2332605268752670053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4e186241791d43e5734db8cbe424a586b1adecec8ef8fd0c13f127565352a0
Date: Mon, 10 Apr 2023 00:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681084865
