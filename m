Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77CC15AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672E2C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667802654;
	bh=9QJQVLIzvHC8oILbVrVoLQHkKmxZDBMhyZRZFy/MLvE=;
	h=To:Subject:From:Date:From;
	b=mm8r1zm5X7IrAPzo+3/F5fY73/+dAmybRZ5XDAvGWJnuOaKNLVAfl6c1WmHQUSaDP
	 KDJIO8PDyW0sTlHNOLQTd3Q0OcqI64VrZcq62ZPYMy5VmQk0eJPAoshghxhhz+0a2r
	 L2wWqze1CPPFcjaoaXocrAxTxNqtFrxyxnoy4tr1iYvqoK9JsJTUAD1xxV2m/bwnGX
	 9afhmL1fsGJwsrWQIO1+bGyWaS9KP1GJYN7vaGtQuYKghVTgYIU8Nuvc1N5BBIbdFR
	 jXafDzVEAgD0I7s4DOnI+/ks/hg7tZndMV4vfAlDJJooXY3gMa1jZPY0w2u56nUGwM
	 j5P1dyUGhigAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50308C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166780265431.20330.6364354654701506080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50eae1bd6488dd61d9f47e6d68d73d4c47b80a340db4c85c002452b011a7fa44
Date: Mon, 07 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667802654
