Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C0218D
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D69C433D7
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668039654;
	bh=rlB2ztfM+QSjAA0C4REj95cWRXfse7ZV8Sr/VjBp4XE=;
	h=To:Subject:From:Date:From;
	b=RJMiFtupgSAMwhUtUVePLgBLqCt6ZGH9lEX31wVsIB0GYxggb1eEdM6HADFHJgNIc
	 Skx9tnJRcwbKfjHMetV3q4+C1Zu0p/OK+SUAs1/BFmRO10MI2U3fcN/hBbpmVtYvMt
	 8Hm/L/LDytio3/JSk/+wybsVpJxCKQeQRYuQDFyifTgK6n80Ig+XbaBjeT/8Vh2T65
	 l+KQv7t7Yq7cf092AKU8Z9AEGP1gZ2nq/5uVJxlC6FMbjcRT9qX1xkkASg7+AQ0wCo
	 cRc+latGyX1opO4qOD4fXFSrHydqu7TLwah4xQOH6KWR6X5SKNv6lrLt3kFQUcwfA5
	 T5HopjfURNrIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D64C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803965435.7890.16340739488146130709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdca45ee7ea155e0f049961ba59505c8b00ec4a8cfd0a958f6bd8c7d9b9bf1fa
Date: Thu, 10 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668039654
