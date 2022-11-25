Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F4315AC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72115C433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669372254;
	bh=c1jyNImFy1Hbvu2wJ5IACOaDEbNa0hqOzDNpWYRbOEM=;
	h=To:Subject:From:Date:From;
	b=tzvfZ4Q5XrYdbgmVDzd8cEi+BLqhoeShpU9W8nGkimSxRRPu9w7OezgagXix4gEuB
	 Ke+25Tr40ImvVaxOnHP1FXyGLjGSNkNDfi5l7gy5YTlbro30qzLMEsXI8KXrosQQGe
	 uQ4QuX2UrOTJqyjpz7f26N8VGit3gOuHscGukK/Rp7xGIu7ivQ7iqs9kbBoPE2QLkq
	 ad+cCr7OqJsOrB+9p/QizpjL35k9vHbchkcuRTH88voItW26x8yqhlGXm7dod3vz2C
	 MQET/Naqdra5gvilhvm9e0V2wM5UzRcSuMnlYcDcvS3mDdl30Ov/63C/7MLCzD5CCV
	 GuE0EhuhRxa4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598A1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937225435.30137.15660317428385163674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01d2cc5cca291df69b5d797690bf9f81606026a4a41eb64465764384622d32a
Date: Fri, 25 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669372254
