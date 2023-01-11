Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE4F6AAB
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 999BDC433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673465487;
	bh=gA0hcqN2mP40yJOgrOtGFTq2jh2w4QoHwfaK78ILMpo=;
	h=To:Subject:From:Date:From;
	b=UPcNavJU/YLVTj5UVW+lJALEr/FcqVB35/jhtXAFuyrYuFOnuE0SzRSeHRPO9q1Mr
	 CiNYCp1KCiiMKqfqCMnM8i9YXhJL5PenDGIQVUgxRAzQKEcMQnn/vcxE7+1Tyj6XWA
	 7izF4kkyRgtkiK8WAS76F1F3Oz/sKZXiCfNOz8nZlnJkNZxE3Oo+WAB302xIP3VgEQ
	 sHYOt4BFHjO47VZp6oy+1kHTIXVuEtRDVPmdOJ/bkvIZpr7XUgIooUbJSnNKU5jQ+g
	 UWlTUA3r5Ezgwq9Ej6TyWgBS7gAC/zj4/pPZQKxnThg8RA/blMAOm0LmbrUiuB8BDT
	 PU07ifyqGG/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 768E8C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346548746.8554.9905636484625804118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdc9f4e9b893e9d240d102eba16ea440120e708107040898150ff31303b7f23
Date: Wed, 11 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673465487
