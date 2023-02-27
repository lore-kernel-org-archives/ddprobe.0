Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEC92FB2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BA7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677499565;
	bh=5TGiA9Aqycl3WnN3kXFH1cAZAaFco6/1d+h+xAsYLoU=;
	h=To:Subject:From:Date:From;
	b=sWbOlG3EtAmg4K2RuKp6oxVeTd5DQrzzaf/7dwak1lhmnJKj/rmNzGROAVEYcC3RW
	 ieYSKkpI3+uXJHlnXMaHeMar4cPZ1d1r+Mx0FQeK+AKfuOwiaiqngVnF711IihTak5
	 /EmdopR9+Fr8CmpkYFrAbkodppIE8vLE/B13clFNODwusS8uK9JlOBtH4TUgrzw6Df
	 PYUwlYtKBlYGTEmtrnk4wiZK3t0OuACz7faICgWZ57QRrkYaZA/qss4R5kkiUNKYmn
	 KD8TQhBgXGXMC1Kl5jmQUULGWXUkA+T9Jda+jJEFTgRMyEc9hvYe/3KEt9D8vx5U8o
	 f17O2aMSPVXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C176CC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167749956576.14869.15526011738718400365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936d081648d29eb834681499540e1b7d54afa31f2db6e07466c4c54407d301df
Date: Mon, 27 Feb 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677499565
