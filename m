Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1B85382
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CD4AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680110826;
	bh=j+16mPtn5EfT0VVia5fbGcNord1QfnnoNr394xon9xs=;
	h=To:Subject:From:Date:From;
	b=dtW76RLaKuUL+7BrOxv06dt6ioIGCKlG49XYw0/rv6gx7uJoDc2aN8DGzHn4uMg2Y
	 Ahbq+wRjlYj3JZgqeUhH2vGbCxiIO6tDfNNNV8+mcnQvDk1z8USLghcr/KhreqQe49
	 5PUmM7t5Sz8Clv85WRR3vFQz2Z1Iy5GRu46N4sYXfi2qNk36Rkf01lg59+nunsSC+M
	 o9cuqC6X3wjsRnbaETJuQZNycbOhYBgIJjAqRq8bnAKfLGimMxiiGkg6S9IlgIFly1
	 Xms42VXsegKjtIazMz3/W0QL53EzE3YeZCX3V+d8JXi/ohfkog9QobkosGyOogxyz1
	 LuM84m02VBKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0C97C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011082591.22047.6557688065907100949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e54b8d4c3704115d52a821cee97ce7f5ceb5e123fe338cb6e320bee23476c8
Date: Wed, 29 Mar 2023 17:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680110825
