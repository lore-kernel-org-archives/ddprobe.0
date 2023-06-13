Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB1117C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D84C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686621905;
	bh=T1m2c0/7RA8kQX6pIFZLTVB0VmCfpr6p24t5CDlWDfU=;
	h=To:Subject:From:Date:From;
	b=KFP3hB7+sdWaXdh2stmfQiAMYY2aN6WOW+EQ5glQXtXKagUX5kFDUN6BBQI2N6T43
	 J/wJ8+EfSvc9eSb0pe9FOPIEtMmxJpy0ko84v8DGtNZ3EKHkDzSl+qHFmzQo6K+NZ8
	 NW2Ej774zlW4ZoiLn+u6mfz88OKhsaZ3ts4vg0Um3JzCX//cv+/HFAHnQ1SQyLuf2R
	 xg62+nlCGMxdRMzVBCM0tpFOQiiEIDRHzmoxo3x1hElvA7vkEsvGZb/PpooySIn9Yn
	 eDMEX6Hz+6UJpmGDrLhrND2XNWW27Zw8jC7Vae1AgUeLU2C+Z9wvrw3bSIMBv2LK9r
	 7KbmuLBMnJp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF0BC7EE43
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662190576.14352.17570220297111990308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbc6a80c70643475855fa20c7427e8d2f6e71005fbf46568223aaef0f68a83c
Date: Tue, 13 Jun 2023 02:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686621905
