Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CFF639
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6121C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691473988;
	bh=UBHVvsATsvZtiqdGtGHcjMJl/KDmdR5iv4VPeN1GwjI=;
	h=To:Subject:From:Date:From;
	b=DpI/pXb9e7+lyLI/FRqZdB5XTticiij97ggNdXcN+JEE1aYIFnMApppeLPDyGSubu
	 6Yt8fVMN4LTDpz0ztxcqENQxo9bh42byxgAc3tbWrHeQPzJjGzZ/xRgN7a+fUXMklK
	 A3WJKHMr7AHa2UppR6CfC2EHcDLY8dY7zGA49h3ZVcXzB/PD0da7JAZOZiUsuXjEyB
	 Jk3NQ/V6j08cFOpCwcW+p+BHbjp30kxcMb/1u4C8u0El6VyZW5O08zmOCFzvC4iWAG
	 3EpF/OQ37JRlNNFgIp+Mo2amQ4qKe0dTzYuLa9g4mARAGliq7kWA+uwGijT/P/vdhG
	 72wcJx3hW1EeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38F2C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147398871.28432.571256245718074952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb5294a6e9675b5f7f3aeb6c036e422fb9780b98901f2b39b39b364c272c761
Date: Tue, 08 Aug 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691473988
