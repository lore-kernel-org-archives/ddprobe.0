Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93407B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B06AC433B5
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663985453;
	bh=zYAVr98tx5FPp8IcdWIl+Fsr+dIeYQ0gBGUr8Vrs8F4=;
	h=To:Subject:From:Date:From;
	b=d7sNW0ztvusEY42Ctam/m1tGLgOhIj4ija9+e73Hqm/qUeYUipX8wJsGwdmha98fl
	 GT2RNvmRtAV/HXb7k/sXnezqk5QKZ1w6MQhOlwlZWEgLE7jpcPHCXBLVAEj/9+jy+q
	 YSEz6N+yRE45bpiUuUD3kMAtdYAQN5bimf3hCykHdjK2UCUUUsZx72KKGj9jP77Xvt
	 oz2n/+scrahxRIT5NCz/SWc/tqKS41mUdtdxfVVVJvNv9AAqx1oUJwxWGkgGpVAA7P
	 shaaxJZpcfDCdrs0eNWb7uef1Cz1/CVMNNlcdAFU9TgY/Q9fkgACQG+hWLGeCG8KlO
	 bNcgBE3gMzYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A849C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398545336.17531.10395216705206081457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a0f285cd04334e05971008a7ecafccc885a6d135bbe3c0a43d4c0c4406ad1e
Date: Sat, 24 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663985453
