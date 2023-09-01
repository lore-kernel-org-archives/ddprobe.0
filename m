Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E769110B
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 02:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CD0C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 02:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693535648;
	bh=EnO1JXsLRCIbFQ4HG91islJZ4+hYKRgazFB7ANjVErE=;
	h=To:Subject:From:Date:From;
	b=PIP0e+i7cz3l3YdZVlGdeDzIFUaL7hwrD4F+mEBMchDDz+GjRRl6/jR0qv7Ct1PVl
	 h/BidsPfXk3opFpwW8Sn+Ge3yYMqw8UxO2AsAr3MW+e+wFXPuvvVrSTy2zS6z4Uyj8
	 7KrvDmBfqY5OXVTQH+2dZoSQcGgltqRHdllZDABr9iW1CdgiZ0aav43fE7WGtlKtbe
	 bgbxb2v2jRXWcZbTGSd9qCJ9pQKGYgw4cnOcl3Iqdsp5+P9e34XHTP91KNeg1EOo5s
	 h7xzI4g8GWO7yeOpSXoneiTgCmxSyNiGEr0lx2F4t9shOPliWG6ZBtfohZcNKp7qIu
	 6zFPz2mAP+s9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA560CA0FE2
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 02:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169353564868.10906.17618558516101724085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929de377a33dde01cf0d5f6e6dcf05bfc298a740abfbbc3488eeeddb6ac9f486
Date: Fri, 01 Sep 2023 02:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693535648
