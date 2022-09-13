Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6352F29
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67980C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663073453;
	bh=hLBo6+RIoW2JX/5luafOMLw5/r4i6huqTMrpO/Xlivo=;
	h=To:Subject:From:Date:From;
	b=OdOKURTK4OVB0gpzbyIzUUiyc7WyTh4bB95YeYF+iY2vd4drJf8xhd4CJVQQOnopv
	 lrLQBwO0/owqQ7ZS9oXexrQ0hVBp0Pd7ishdf637crDrCYRjgXylnhq6cEwnF+/Mwl
	 o9Jn7W4fobR88JiONZbxoYgDZego4OZ6kEx+d2s3x8kpFFMRFXxLBeaBhXSigd18al
	 DLldMbuwhouyNMiJfL8X2unCTClpWbaKMatx1+RmtaXBs6uK0G0SBtlJdmN6EsIFgJ
	 PHe/S6nShHwe+oeG4F588R0j7kyjoaUwx1iEjjsii+EVSHS0JgFmK5CaVE8QHTI7J5
	 ViMh1kKvLWAYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DA8C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307345332.22658.17497222314936643904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2982ab8ef35786dcb09c78a3b0934c6f6d6a45195ddbda16c45d2b59e8ff747d
Date: Tue, 13 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663073453
