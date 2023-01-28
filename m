Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A723214
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78C2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674894185;
	bh=cA10XJDac/DXY3iAZT3VXz8S/iAVFsYu9WDXsqnnKj8=;
	h=To:Subject:From:Date:From;
	b=JFW9bMbaRbkjZEWU8/XWHn4dg+/LPJ0QR2RdK/KkU8b5gEYuh0ZeNpf3/j4gVNXcE
	 plI9H1hc9rmmMe+laywrexZliea9dUOmWIk7O51MYosveGVAKJHDTa9DrR6nWhANkR
	 6PLIiMB/IavZkAChTnu3QuDBMQSEPH3qs5agZbYCayGah4qm/md8430bNqTOffGCxB
	 +YWXdzzkrcIskfz7b2uUjRU1J3sW0NSiTYv3nam7KDbE3lXJZdiiJ3R/k7Ep058oN5
	 zTxiLrDe5l6JGu3QDmP9PH1rSQwC6gxaGsmcMZA9aIQhmWO3DWqadWgqqtXvC/ydv2
	 Syv4fDbRHoIVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB220C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489418581.8700.12515685452402089470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39af30208c5c0ee67e17751a1387e2ec1e003358bc1639cc1608158a56f60ec7
Date: Sat, 28 Jan 2023 08:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674894185
