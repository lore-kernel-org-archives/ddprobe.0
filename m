Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F976A955
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 09:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF71C433C9
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692006788;
	bh=MB4VeS8C8FEojAomLAF0HxHSD7+7YrzosIfr5bxvxD8=;
	h=To:Subject:From:Date:From;
	b=qGk1ISntqjOT6sGrwIaywbb7imQU9QRiZQ1ax2gdZXGWEF1VnC6YYXtFwUpMtBf/7
	 zV3jM/rsnZrDJxL7qfKneboUbZ+Bd8lUzxIqcjuxGcJkq18bVZF5gB0ayQJS/3q2Ms
	 Eq0iunmHinasRIicBb7LnNEBfC8l6sI3H/Vv9m30M81w+0UYSadh0diJTX3okF9eB1
	 uOGMOP8eooRmYVhNIenhahwIFNKfzJ0vG/bTB7xLp13doEtMimH12FwqPP49NnrkmX
	 za5CXXP/Saw0WDM3Dk/mNrKgJHfBbT9xQBlgTvuR8z6jQAl1I0S453o3eQmo0yIQSZ
	 O1YRppwNZ54vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0133EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169200678871.6821.18225405119092266941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590ebf980d17fa0742dc145e57e1a842bedd32d0b5d2cbb2fae1225710e9958f
Date: Mon, 14 Aug 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692006788
