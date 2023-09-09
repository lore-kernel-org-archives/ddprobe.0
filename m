Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67919370
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 06:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C85C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694241848;
	bh=0RGEo6pQRem0mExiVn3KT5xQLHtZ+f3yf4viGEo4wq0=;
	h=To:Subject:From:Date:From;
	b=HK8yVuKA1Pupcs/RcECdEEk0lmeMFJQMpOLZG6Mqnw/msxTYd1ytRoTzCfpjG4AfV
	 P0XXbLKsNb4eYjgQx07JyDcxIxdtaIiUrE/Bt1rxZE79MgOlX4TQqbDK557zDUDmTQ
	 XZRpVTvUSR5wsewYAQANC6J6wI8bK7lhJPgpBzOY4W9vr151Mi0IZcfeSKzNtHrju0
	 seyRp+0TCVIDtyyuSC8OpEHFvQ0b3tZz6sYt5kR1bn2JcqU9t7cnEMQC4rtJN0nJKX
	 B7WYmAE98GZ4U1SLkQ9u8MnntSd711tqXXz1rK1YkKR1KE6qgiRR5ZH/BCCPTB2+aX
	 AflAKnio8j0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B011FEEB57F
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169424184867.14639.1441186548537041745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b694928a625aadf34ae52260bff71666421e7f027deb4138a05b296a83476ae2
Date: Sat, 09 Sep 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694241848
