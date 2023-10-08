Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80504188
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KO1dWlE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB0C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696724828;
	bh=3/ggxdo2WfQrrtmtWaD4qRBqJu9hIh1q3KyUc6bp/ks=;
	h=To:Subject:From:Date:From;
	b=KO1dWlE6sBY6tzfLlAI+hguQBwxfTUIQPcBaSKl3zXHIU1OBt8OSoVTU7GNNGJuve
	 w2Xmdx93eelCMfyYoKc6twINCnnUB5ZlOcVUzpy7gpAeZGKCmz4vdmPbiv3YsHCCpk
	 FjIePk6SSIfmUKI9wsKIFgH38G0bPhJHgCqHowGi9HkfOLpuIvxhBAksXBSdc7Ra6W
	 c2LWel8n57t+cwqeoEvJhknhiQdqUC3mEjFRbQv0oMT+84ILaeDKV0W2IZlgdid/Ln
	 8syW67omR/cDoFUGqgAjjuwvUPZ/+sbwCPoX2GUcjyEtZKVt/3QOoo5HakToqxr+v+
	 FubxZRqwKYVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B023AE95A7E
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672482871.6310.2902620995617722220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54da6aec277962193673294cfb1532c1de7229529bc7c65ff9787dc40366b44
Date: Sun, 08 Oct 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696724828
