Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7239937A
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 01:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC41C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 01:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695431708;
	bh=trJjZFJJR5CTMWa7iTnvPgZC8UNHDh6gkI4Ve3k4G9I=;
	h=To:Subject:From:Date:From;
	b=FhLnWAKn5Sm6fmVmgzlwgLszVI/RjqByZL0hUtFjYdxTG5BsWLrY15dm/xGivqfkB
	 YpSA61scU031jtu0bViGt+UJexN7K16NELpMHFl8CFBM3x/7yfEAXbJyJ5J5oRcA0M
	 lMMesjOeBu80PaUtyCw3k1/iAMq0F4iNua5CX0GMS4VPtFkwD69KEc2kYM3T7L0xhM
	 3o1I2yZhHO/s7jKZIyPHtryxCLMgdQKzI9YSZP1VloAh6BQNzVN0EgjX+BnZBAqBmx
	 91zcxm64uOgx/hhbZDfdy0Z6HyGIGLaPv69zdRwkmcCLwEeuN2Gy8kXWyTnP+tiH5a
	 ZVCOued2pcM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89A5CE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 01:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169543170867.18753.3339233860679541993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9695629e2ed4abb48b6c0f46212ec0cd4c06cc8a5ccb1393ddaed9f4743e2d8
Date: Sat, 23 Sep 2023 01:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695431708
