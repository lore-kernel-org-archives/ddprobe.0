Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E6C22EEC
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq97qusE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822EFC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704445696;
	bh=AuqUMaQgTMAFr4Z+/ZhN9tgRxDouQ1hAciwNNJq9NNE=;
	h=To:Subject:From:Date:From;
	b=kq97qusE48/FL1WZKN5CdgmbFqemO5thiDdoHChzHtEyPJmDxVf0uGJGovaLAvOLH
	 QZCzmGbsQEH5DZN8kIKGh4XOLZzossQJBwYmQWvzh6MT0HfG/A1RZPrrTwhGwt64XE
	 mrsJt8w9KqR/71/Bp2tWWTf/PNNSdiVkiihmm8eXdjQ44v0+Ys/Yp5JtWy3eIJtzNU
	 deKhqvUyg9WXkgILup/TTby62+v0rWGxWegUqoNb/ngG2zBcXzD3Di+l5JOM9+UPx2
	 cMHDpbcsjiX+NqaSIGU8hP/oT6kcCooYjKehC0tVWkwLH2txPSV7xvIRKYbe+Wxdkz
	 MOdYSIJZtVMNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6516AC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170444569640.27732.1895768707729507149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3f45d168420f54758750154274a41c1f6af1181df1e4444a9f7342c4ba8336
Date: Fri, 05 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704445696
