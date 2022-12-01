Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9D3A20
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F553C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669923654;
	bh=72YAY/qRrKZcwZbQzgVXA1GGRaqTQrXLFxQkizr+tDc=;
	h=To:Subject:From:Date:From;
	b=GIAxugLMBi9hlNgbcOrVJQx+9EzLDaZ7T7KVK8Etdu6QS3020Fc9OnJvcHJBif5wJ
	 h1gPrVUd2iO+MnBovp8xn3yUGuuzW5qNSydnJHCxQQCLEjVf49Iz97GFBAGNoxSi/H
	 Nb2mYtEQSqqc+u1nPNemRFgT087P+lODfuH1LKvCybzZ1mT7t3Eh2+UycO1+onwJP4
	 M6FvXAW6B6nf49tNqIX0fOSVGY9AAuwaocJYFekxSmQaECmxaYQVv3N9GSOns4gV+K
	 gB3FqazDWo7/rfnIgs+v51FJZgqHs3O76w0Giya9UTUfEB/sn2H0amqSDUIYfyLQXR
	 8sBHWd9KJcS3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5326EC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992365433.14407.13946417103983986101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d26edd9f70d0ba3efdf7b32a5aa2d66bf49556a06c40048e67906c4b1efeb1
Date: Thu, 01 Dec 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669923654
