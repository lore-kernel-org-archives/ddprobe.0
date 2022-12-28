Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF42BED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672214487;
	bh=aURMZ2tO1u4bTqEuVn/21C4szXHUt5aanNUs+TE7sos=;
	h=To:Subject:From:Date:From;
	b=rnnfYto9iApCOrPmV9ab2qSZBJkuMqQRpR4f/GiULmAjQ7Y15rBg3mPTfcdYvF9tT
	 gvUbl0dQ/sslK/MtOz5QYuTQmLsOdnlaXJ1YIkIzaiDnyPfG9khv45+nEq5oVazEZM
	 yZmRhUnVe+jY8JfD8IYtUdaE/RjrfrBeAhs7FnTn7kMWa1rQ7JJP9oYb5jt6RP0WEL
	 Wa0UR7+QPWsBDKnftK6YhL4h+qhwg7WtgbtWqCZpq6gPO/3rD1HDOgwZkkcxqzrXe3
	 2AKAFYYvisGG+pF2Y2gDh5RQ4aV+SWAHd/c06dU6Q4dT6K2YImnLLbqXMHrcg6wz4w
	 ChXvn7K1/RuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E719C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221448756.31260.15267546152783240747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40cc45882d70bc363daf2c9e300f17e34bce558a00187ac0c2f5ec172291e74
Date: Wed, 28 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672214487
