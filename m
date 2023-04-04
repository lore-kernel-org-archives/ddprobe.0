Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F913C07
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 16:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E685BC4339B
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 16:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680624425;
	bh=VZmh0XvSpb4PQwvlk6o+ACl8yivDeDuCp6zOvrq8HNc=;
	h=To:Subject:From:Date:From;
	b=ii+Ob/m4ilyc/yIFLFPIo/8d/On/Rkm+hFyTIpSaNjm+eM4lUnm1Y1H7yXN5uAaOt
	 CKbIibQcEbTZ7DrbySVByEGx6PmmQ8qF4bV4Wvrutxj1ONpCzxSXkxWINH/wu7gYiY
	 NxEDNM/f3UQ6eynve3KkUiG+WfAv4LZDXa9d6NH605X0kg+aCjQEe1OpVYNY3K0kt5
	 utpHhoJOrDI4CrRxx1nbURJxVkt2g+2IqBIHGgUozRtNIwg4hjIFvRzZAPynn1wxIg
	 /xCcc9L/j9md0KhD/iJtQ9OIT1O2cOClfP1JseDn6CVfB2+5DUL8vEr/sp0lUXN1Qy
	 JtlA2OAKtm7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C02C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 16:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168062442580.8875.17550748598336739227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553f65f4be1b9ee9798ad5df0e5360a546ac4373851f800aeaf23ac0f74b5472
Date: Tue, 04 Apr 2023 16:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680624425
