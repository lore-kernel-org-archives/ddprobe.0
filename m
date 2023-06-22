Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE531F164
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 14:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB25C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687443788;
	bh=QWyKmb/kJP1yKdGe7hUj9VVFj20vfTHfdTtNCy4KC5I=;
	h=To:Subject:From:Date:From;
	b=Xzr5oNWxfAg37MfGA4K8U/btKZGhtSDsHgDbFISkxLMpxVOJFcofQearasi85ztCQ
	 yWJecmnY31KbUAKqrkKwDAUGCpFkjFOz6u8SX7j+VETPNR6reuPQT6KJxn6D7TwIUv
	 VufZ6SjWtPUc6e6ZmnKJOANsq/82J9klNS7I9tOBPTS8bksgQzBRO2hskS36ZvSHiR
	 BBeRHs/nMXNvnR5FZGk6YwwwLQSap1HX8b6L2982OVvZcdNXkzCysz/9sGwfHFt0sa
	 qYMVs4MYMgGdwsAF+lK2z5CjkvNlGvok7UuH+W4NXeGubGW1PjVdB1T8s3sGuPSn67
	 TqzAdKv9BCMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45A8EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168744378866.7344.14716178011927902230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2a0f953761f747924d721fb574ce0a06fdd40539fd57d62154e895456aa474
Date: Thu, 22 Jun 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687443788
