Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0511C13
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E62F3C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688818628;
	bh=kEXpnOolGVxkzlzJrCqm5JTeqjwNtZ/xKCaDU4+xn9I=;
	h=To:Subject:From:Date:From;
	b=hYzI7Y9W12fN3uzvBJDie34xG1nitXj4J6bYdHlptuboXPVZa+9jTuYRIEKLqkm9B
	 BQDrR5Vyz9/hS1/K5Ja2OVkmfeF2Qywkkv1f3sTztoBs6lrcJWremusPkRdTlNJP+j
	 7hMGkvafpo14cnaTAvO7k8KMd+4mpCgYUiDlZzF3hTvqP3gY7Sn7DSf1e45joNgzcX
	 WOLu5QufN9BIkjWH2ncPxCOWGVZziw573p7j9LhUiKp/efsvdJT8NCUAgezhNWhGIL
	 gzH8mjJVQCU+huBhV7J7y9A14iwC/Qlf4DnT/8o1LL6DYG7+GrklPBb7oEW4tgp8B5
	 CpsGKQEXL6CHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C569AEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881862876.30830.3976306989833490263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185e0a4ca7ff9db3987123ef71127a42955327f918c099acc36f6b11d81828c6
Date: Sat, 08 Jul 2023 12:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688818628
