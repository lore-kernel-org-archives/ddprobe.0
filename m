Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AD180C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693AFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665832853;
	bh=dFLjKdfKzwdbiWx9SFBPXA3nIzHTVVVKq8xA5d0l+yI=;
	h=To:Subject:From:Date:From;
	b=q3Nwn8Hhslg45Ax3cvStI19qyxNCDv1dnSNC34eYTmEzcfnExpRH1eWqOEbZU2w7z
	 njKe+MQaAkuA4dxAfufybYtT3O8fZ+/Zxel5VDXkZ6QEfC9ccNQpavZZX/l/32NQwe
	 NlwRs6DDgDjJqdv9MAUlck3Y361zFkyXiT7p62Vl2RxM9kX1FbWtU1/f1FpyeeDDpK
	 JDSjj+XfG84QGu9qYYKsvtg3hKlkdgKuYR0Ic1x3YrGxX+Aa6u8riGYcePuwu2sN5o
	 MXDNGIcY0kDZ4LMKlU/Yz8K7cKkzc0dhqzqItZYFrIcAAha7Vt/GhyLCCvuD9QlJNR
	 oxTyhMiQFSX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FA1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583285332.19040.12122772130832937041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894a4038767d62236d9ec8b07894d42ab9cd4ca64eb764a2c644226e45bdbf6d
Date: Sat, 15 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665832853
