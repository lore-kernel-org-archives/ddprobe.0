Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F17291E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD62C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670107854;
	bh=IeeV0c1y8k+1ozzQxsf7AwfkUmYDbkyjy/K/A/JDo2U=;
	h=To:Subject:From:Date:From;
	b=UmtHQhnQuWeO5wQSIAoWhxAb0734mXxbC/4+8I2jjJ14MVKwF8YXoehxv411Om6eX
	 ItFr3borM15ePiVYRXmsVmaTbaaLFYAQ6fpP7BNvuKOGYGhfUrEk+57YZhGE2RCEjg
	 3CiDqnXgvqZHfFbOcc0vhOz1+sTJI93+l7qm7mFJjsTW7mISvze8QwhEzMVQVTkQoI
	 AvBzexEDvfJbbqkaT4IWjxTDGzMYZEIl4u8PVcaUhhtosNO12qGkjwvvxA7S4myuSW
	 WRbyBgltc6ssvUZjtaJv0pCL5SQryIPB3BZuKojD4zI9TVJgHlNuvnISLePAesThqq
	 yc0uCLg0UOhRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5812BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167010785435.31888.6990425736809188251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6716fee7f778b2abd2aaaa0c1c5d872f43e54a1ffae117df5f0d52cd2bdd70
Date: Sat, 03 Dec 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670107854
