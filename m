Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BE82A9E0
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D50C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685464385;
	bh=O0qHcdDsu9rUdNzDuVAO+29ZXvb4rBx3rmtpTfq9M9Y=;
	h=To:Subject:From:Date:From;
	b=r9MKMZLMKFkBanlJEYqiy7dK5Mtgz5gIXiGThgZ0VJmAt+FyyaDxb6L8xenqlhgJ0
	 sXTuUEn0xaRZ4FCleVTBGchjBOIP1oCln6q7k9l4RZqp5BqSdJXtZwpwjpmXHpA0JU
	 TqiH5G9DtwtriQxq0kfo4FdeRaU5mww+3C/xUOpoTgmyzTOcUSro1MOtr8U4F1CbOG
	 DmhvMV02uKkgLnhUcXJBhQweffg06AzTD3Dy9M6CBXaf3CQ84So1r15cyQtDuuu1Xc
	 m3l7uwZx6+aeBDcHE0+fkvVd6OEeQxG2Nm/0NUYcScOGxQutAgsSbLLxCsG41vRlrf
	 uGD/aJvbNyd3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED7FC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546438577.9862.12998603411940952628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7675a19a3ed0b31391e9c139bed338deafba5ea24e5fc2d88937260e79ee5f
Date: Tue, 30 May 2023 16:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685464385
