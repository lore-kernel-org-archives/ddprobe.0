Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1397C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B05C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662608453;
	bh=aofOZ2VSmCe0IttdA9S0SMow7dNQZt5ozV1VlVNjwkM=;
	h=To:Subject:From:Date:From;
	b=djdOy2WwXeZMiwk328ecvc6RGGoqo+kUK93jKfqBmjpUBGBT8HniCqPpOGq8OfgCP
	 65QjNA4ijaftHcNE42dlZccknsfGDLU72OkJCbnoYrQoiQpd6oRIg5gn6IO3+0MZS5
	 xjhYWt6XH14FiZkFrs1oHLIU/UHaLbyptFZ4r4vTBJXJmfkwy+K6qJdbp5AeNon9zs
	 vyP/ypFd2BWKLZVmp2NuYrtJ6YuEfRmleS2Aqy7oL+PcsgTQIJCpZQGNYc+1ri7L42
	 1RC18bRjNliI6neRLBUGvxM4Gz8z7N2IJMCOzKCMngrpbEyXav954xfksGRDcreYxf
	 9ztKTXYDFCXHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F9AECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260845333.4687.8292827717981138620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cb5e864ae5601ee067a446fafb635afd79998f67d7749999ade6aa8d887e83
Date: Thu, 08 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662608453
