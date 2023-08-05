Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6361BAD2E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 12:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5397C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691237588;
	bh=0D5BiV5tcozNOtJnmUtx9w54D7fAWA23ROaAWjPL0dQ=;
	h=To:Subject:From:Date:From;
	b=sB6rMoXLM9nebhgx1zFJdWmOBx5lof1pklMWQxW94Q5NffiUOdHxO11F1U9wN0EqZ
	 E7xPl5H68xxQy/QLQdsAhCJKlXBovVrXOJDyeJDaAAjtRwKm59MPl8V2Ki96lEuwF1
	 6F3beSGUudQ0+2Van5gX/CjHCQbKq2NdT0v0gDunyqzUZXeMh+aCjakA3d/0chjtJe
	 ghhjmyvaTHu5Ju7dF1OZlkLhiMYMAt/UV0+6vx5pDtDRUUvrfsEuP01nOLxC5kJsNl
	 kmX9HythqJt18RNN6OcnYtYEIk+jVjhCXhhrwxswQ7BKeiK8/PmfhZnQKysVDmy003
	 kJbCAmana8nUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E83C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169123758867.9232.3774242658767104901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160bc9c2747111b4c47d35991d94c1b6767f6c2f52641cae2b1159d58f1236ab
Date: Sat, 05 Aug 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691237588
