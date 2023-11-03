Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E907620
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtHzPrL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CEAC433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698971296;
	bh=pLBt9Emq/bU2tUmSJqApJPesVYoJgq2RZBmbOBDBDT8=;
	h=To:Subject:From:Date:From;
	b=VtHzPrL0D5Ya1IEmPf404Dv4+I/iSCgMAXxaRn4Bysv82xHhkwICiq90cD69Nefmg
	 7RY4KvqsiOARw8kdufZJZiXjWLKbDqCNl9CSYwzmHrgThk0D8qB15SwKN+Z9+bWIav
	 Gw4RJFFYCXPJaOn3IiZK19Ag8HQT0IC7q/p4Y3yiuY6IWaS3EvIQ9Bsah3jWEHvXtE
	 KZjI0ZVLZpbU/eK+/+B37e9ytpQrvWdxW9xv3advSQOciJv1kEyLUlb/iyIVjuTK0I
	 V//T/qdhZpTnOXmtXzixjtZ46bEyJ1U7puSuC1d5j/HorofGyrPKQbpNr5syidHvrv
	 My4IOdMOY+oBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6480FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169897129640.9035.4182007699844888144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b41e336b93d44ef131285cc306ad304389a8cbd5514e370e92db564c90e154f
Date: Fri, 03 Nov 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698971296
