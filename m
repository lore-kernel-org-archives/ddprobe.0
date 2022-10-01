Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5FA2564
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 675DCC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664619053;
	bh=ymub1mYd08jgureuFhe1USGQv+MCiZbTzf9Tpu4u+n4=;
	h=To:Subject:From:Date:From;
	b=K5sb1BuyIna72cGMOw77bqrSvZ8rExDAzMy5HCEzdvxBLURdg+OY1nI3PB0Gd1jTA
	 eRAeBqErmgaZ/elOLthR5QM+EC+ReftB8t9DdIa0Rzbkva68OQrB274EUfXbLH8Gkd
	 L3npQK4gE/wtm1tYWkYP36EbprmGy003kr+tXazTVGgKKzhIH+kK7qhsEaVfF4Ji97
	 9x4Qun81E607N5Ip38f4v34j0eHVSUNfLOkhdD9VR2+E1GFdpT2bR2U2tz2Yeqs3xS
	 ckAyZhCcAGmZQx7J+3dl/GZcjfAEUOLAI2Qip+WSQSAQUojJBwPluqcOkkW/Cambbc
	 C1NAUwnnjGVTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EDDC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461905332.17316.304161183221981122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c637f50633a7c4efbeb8e5e65eeebb9815649c04d026616aff065fb3e39ae572
Date: Sat, 01 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664619053
