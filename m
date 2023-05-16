Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370CE2C726
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 09:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F9DC4339B
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684230125;
	bh=Ji2wIHN06CKdpg81P4Ir7yy2srtT2q7RbVifQHsDW3Y=;
	h=To:Subject:From:Date:From;
	b=SxhjL5i2eXzxuWO5bPSMdv4ktD6DfSbiAfpPLIOP4PAoU/GACuy9c97B/9MDn4i+2
	 rfr1x58sd2dskdWiE1uy4gdpwTqR7pDhTA0FZ1MdYSfY7RA5JnvI47U1uAbaEntdMD
	 UmzlmihY5IpudbxGdLjrgYQJljGQ8YxcLWmqbqLJQ1dDB0DaXdfs0xS2moB+djW9Bt
	 BQHuB0Ampp/8TabMm4xUbJNv5bgnCech7270Qq/PTGR+Asom+Hmutn4meRUPlFZj2u
	 IxeljerNGJVnac4qjJFmOECbvxrh7bKhBiiImNSQ/1mEcNRFjrKqaddZX7z1MF1B33
	 T5BhEm7INBFgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAD5C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168423012577.10758.10316872218816505723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8540f9e0f7bed388945c36bada2b5969e7e64d8a0d7baae6c171fe6f541934d9
Date: Tue, 16 May 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684230125
