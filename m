Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5CC17CD
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02E5C433C9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688976428;
	bh=a+EkJ6abKmu9yrVy0LbKRkfQlMGLrYJOJDMPEAw7YMY=;
	h=To:Subject:From:Date:From;
	b=eR0k1gH8T0xFDVHYolzKYFd6edWE0uzRATufvasogEEaQhG0CoYrOBfLk+Fgz5Xd9
	 0z+NjnADoDqrMLfowUrSNqCLsqoksGMQi0JRFjCSyG90cbW/ZzjADP3hYixPwOv944
	 DPRyXTl9dayuIfBgr1iWS2jVVhSlHzsb6p1l0hD/vmGcyoIMXtd/VK4XQkNU76L2hR
	 gus8Yyf7274K/n+D4nKDLM0aMi6YsmCR1/OCI3tb61SoptLjBPXlbOsB26POgKOm4T
	 +v9ffDTTd2JEvC2AziXk2Yw3lrY1bJps6JguKUw/KEpb02Y8r2k7NkYYMMGg+oUjsr
	 xD/e8gWyFKa4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C04EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897642866.25464.3240018048000500716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0289459e92d04d58b89f2b26fa08e48edede37bb02fb5dd28b03629df926e57
Date: Mon, 10 Jul 2023 08:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688976428
