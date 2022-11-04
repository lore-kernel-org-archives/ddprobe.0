Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA47D7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C91C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667535654;
	bh=VfJ5J09ZKgKqQ+KGsIABwSS+ZWbJ4tfwozuxxyMOlUk=;
	h=To:Subject:From:Date:From;
	b=QF0o2lmeYRi/FULtV2kZ+PLoVsG0FeCswgD0XxMeFir/Z3DKNQCwXP3rGeYuc0WKr
	 PPYEJmTaOFdc7zwhNa42xMuu5MZlDIMi4Gas/ezFPhaKB5AtEnEiz+QBZxpVqQ2TwX
	 maT8vRP2pbA8DORlkqttRrgiWiUnuFNRiVvcdwSaYfQCJDUCt1hxVik6XWAbw7cZx5
	 GjZ05j8SsesxI/R73MspWJb4EYjATmR9JeFYeK+I+VS0W7U5kgqd4lDylzV3JpohOQ
	 Pjy8vEhy/6Qm6LJrJvFRp4bhGSrSNSSrItKRY8Dc1CD29mAIMABoiFX6c1fwBvhH75
	 hkFdV5MQd989Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C79EC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753565436.8438.8090583321973499760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0751af49bd6225cc2cdc5e2b26a604a2772fe3ae9dedcaf53ee58ddbaf381d6
Date: Fri, 04 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667535654
