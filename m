Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C914B17E0
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D9CC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670230854;
	bh=BPSlisllIqihcMJnz3TAOfaJKAW31qzjQ3mihglhI3c=;
	h=To:Subject:From:Date:From;
	b=FnP2Zt/cSlMiCRC6KYPKRUipQFm2Hkz5u9qVQ9unwjR5bdVsybG+luxPADg1UZI/V
	 gAzYfrb4OWnHY7MggCmBT7dUKf8x555UX3xAgQteAxA/D7C5yvdQ0blXCl0EbgiXrB
	 l2+8UxEOlgwRVWlo2wi5owcb/MyRSaZDYA/Q9iqbymP87bUlPx1ghhU90T6GcVvpdD
	 nykd+wnBu7cL1Vl9T5hbaYV9ra91haRakhbFIglqLgz7tR3IoFYCksyGgVtCQH4Xqz
	 T+llLH7FI6kwcgPJvsM1E7x9stSN12hvhUw7VXoNE8vBHjhFjtQFLFo2ra7z1NlioO
	 grHFoYv5FB4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572EDC47089
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023085434.30040.9448561285446364602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48712c0ef3633686de8107ccda8e01dea7b76155e3bff558809cba9eb80daee8
Date: Mon, 05 Dec 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670230854
