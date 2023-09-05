Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D047F3
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1074C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693893848;
	bh=b1tooYEQhdJ+nzYqBxXg8aDX/6Cb3XOWQ1BbElCaXUM=;
	h=To:Subject:From:Date:From;
	b=hm9rza+sXWlh811BUVZpJBBVk57r9IbXFTJiefl8RRn22ROgTcWwF5Fs0nDdPui9f
	 PcRl3u7x0qIBvujSJ5YUF/w9mrtsAgD9Xk+VGRGmdr52awfCs5l/dkoWn7j6narNfW
	 2c+xEkXUdEXbHWe5jWN5+sZGCKxF8nP7rv8XnAqhLzFjVA7cYwO4NCUVCj1QNCk59n
	 DDwJSkbGpFB5GIWX0o1dUq1wOBPGNYIgSZ+8Hr754UBnTvONTHHDyj1zCP77mugQWb
	 i5Q0cJ4pBUdIYKWx7L8g03Ls/w2Op4Ctzm2qjO1jrPxAoyBmKYGJonMNaUhPVf+GOI
	 nEcIPl7AOQFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6323C83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169389384867.3767.4834416236478318746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f196c6533fdac3f0e08d251da70e4b7d35be2be13312c4fae42b7fb8db5e2e4
Date: Tue, 05 Sep 2023 06:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693893848
