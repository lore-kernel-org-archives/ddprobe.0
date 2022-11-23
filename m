Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA09C4699
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D14C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669224054;
	bh=70ApIX+oKHdbHHborn+LQf38BCCXwn9AS6Pw+zoYG+M=;
	h=To:Subject:From:Date:From;
	b=XfirYyZ+U8f+cyCsS/JuR65bxL1WEUL7SQDAjvqnpsYE4eHrZzu/75T5Coy/Tr2KO
	 rgHLQIDMAKfFojqj6RTuXTY4ng+/EnpabKmXOv67etj/0+9Mm9qdebygeo9jRsbPlU
	 2tpmWoQYt5OWUF27KrD6vGCUhA41UzNhdYz8w3kuesjWnlNCBRUz0E81y/wPO0BVMh
	 dp2yV/AIkbS+a1qoX/oBiw2mjyx7yxNabeQjGu6cbOTw0GxQmHgAHv1Lh3JRuC3ruW
	 FproJdcRZ8FBw0KINpuem/OoSi1GKGOKtlPCUGAjQ0hxQZ940baXYrsI9aApB3jpzg
	 IYpKc7Y/6vE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506DCC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166922405432.30767.7889290729598906991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f2ae040f4780e4d8a7e5645cfa54341bef4a1922da1c46ff332bf2c0752173
Date: Wed, 23 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669224054
