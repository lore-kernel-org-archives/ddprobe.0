Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B346C7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B7CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663664453;
	bh=vHw9RMFvjZqW0//FaQ/lov/x94sLEuRY3fNTyWjyFPE=;
	h=To:Subject:From:Date:From;
	b=R0CKT9C8GsjkdiU+jHGnsPIPuddmP1lsMH9b/0ZOT82L9aGdQS3v+AqOhk7KLr3PB
	 6RDnsRFyFcwqJmEbxcVBZLuERtQ7pqKw7jZ0ArtD0g5njpYzOnmcX0joYgtrbwb7Ff
	 TRbgsj+cKefZDrkGjX/hx7C4NtBAeWVIp2RYlcaA+ro18PaBpKbav/7WAcA+viL5y8
	 9Rg4EVClxAUarAwXFJ177/yIu6HVHtmBs+vr0ZAL34efZO3aldDA7RClIuv2VhFbPo
	 GeZWFmKRnuthpJbhGK5hRz19sUiKoB0WJFV5xH4acR47C6/bymw2S2rCFSDqaASrVU
	 9IY3MX45sJF8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59518ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366445335.2436.8403087607657151792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f5079e3c03e07e21c8bc0d979a998bebc537691fb2ec8ec7ca215e77c33102
Date: Tue, 20 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663664453
