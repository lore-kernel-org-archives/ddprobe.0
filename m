Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F37F7
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75D6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679816525;
	bh=3Rv9RdwApJ6Vgt9fudlkCYHQe3xJJ37C16Aa/tlrXAg=;
	h=To:Subject:From:Date:From;
	b=lR8LraUdCJniIr4rRROsSs6AcVXo4i5/y90z/wx7jfDvX4Njp4QySy/2BA+RYoBuR
	 bkkM6rk29xGA7ZiXc1faJRaBZ239eTD1T6fWh7rsNr9cj4U0GmH+xAs6FegZZSuJnY
	 fgnEgl68aoF0Hq9Xx7lHuNj6/nOAIPH1RO561GdGhPrKOwXQhdR4C+pDM5zXOWSF5j
	 IItri2Ze5VEkB5EQKgNQul+ooxef3if7lxih9ZyY3Tu1W/Vd7osme0i606qEfhey+1
	 U2J6sPb6kz8ZrDwq4cAFRNolUdvjQRbi74y5xA8MeK+/VzBK3j3MQjPWk+hb7VvMmx
	 0rnH/PXjP28dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83A0C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167981652574.9478.4335529011879493362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3982b7548597e780b0b424425976eee6f1e55f5f3c151c3be63a00c1f957fc75
Date: Sun, 26 Mar 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679816525
