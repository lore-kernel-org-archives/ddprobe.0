Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B424182
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A3CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691542388;
	bh=d1dFbe01qDcuAmqutbnTnwhXbBvTn6LEELsrY3dM+2o=;
	h=To:Subject:From:Date:From;
	b=AaiuUAqUzCmjvnVZIBPxtQ40QqZawvqc838RCoyPwXEpVXUVJbIs83XJppROxVSbm
	 qtooAi8h9xtp77YuDj1hThysAKDMV6RUjdIPN0X7mFxhlU+M4/E2TrNy1EkPn5Jng5
	 f4uWEh5utF9TSEz3/mzWtRUxgqUXd9DzhYIxIrrKJ68lQcZ0Oue68IhYrcuczxkYl4
	 0iMtdtkd04EgFAOrRduzqn5X7n1EZJgOtbzTQXNn1OZSp2ChOmNWKkSVBeHwpOFFuV
	 z/zhhJXc8hPISzxtdGSfHlKeBWDo0Nae+1Tu+CrZay/JAH7S9h+OVsRBZeGk76y5GK
	 DNBlLY8N7WcuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B1C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169154238868.4175.17507594442119675083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7824f494e8320f6e08fe447acdfc6857d8285d173a56855fba8aa1ed6226fd
Date: Wed, 09 Aug 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691542388
