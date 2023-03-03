Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0F1C3C
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 08:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BC9C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677833765;
	bh=OTGqKjBUIynHtjuRe4/R0+7pTgv4LjIuDAY8UXGvuUM=;
	h=To:Subject:From:Date:From;
	b=knmXXhoacjWPo/Oi+3+DqJIvi9jon9chkok9Q7d5UDxu4Z3hqrIOAtxsTBDgrloQM
	 gBefL1IaRjM5K6Wi43esIu4xDTxNUC00ZD1H14ZUSyua5aY62PUoCcTRNx8Ureidoa
	 3yCa+EL2p/4BfjB+Gpva5Gjzj2iefi0HAHwlrhbMuO6pdITkygC4RBlfb9HEPs6xIw
	 uh0rDfrQsZXCeLVnvAslqk112n065ifkaGF0K+wKwVK0oTFnfAJZPl2V8ie0zlptAW
	 0Rpymrgc5CqlHZXhq3lo7uLc5QmzQQhmo26aj4CZ1rqUNifsNU/0nHxMpQDaLNlqo3
	 AtfqBUD/dmgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5508C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 08:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167783376573.15956.10158979092705272796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b083cb3f1f1859de91503802c46a82ac95a44404b34bd2b4b034e47a42f5f582
Date: Fri, 03 Mar 2023 08:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677833765
