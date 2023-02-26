Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F85C36E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 01:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB95FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 01:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677376505;
	bh=uZbVVwW7IJkEj5CzC6dTS88eBsOFDE9cWFHsH4mWcRw=;
	h=To:Subject:From:Date:From;
	b=Co7xelYOgSO87rpFIiBO+qte3W4uNfF68XlfqVRByUQ+CzTFz4Acecs/iAQuNZaGe
	 ZLUOc2KYuQAXRTSCsvCS7IWIyK8wXwF8W09l2nviBXiwzKnOKNGZODzRYU+xKU06Eq
	 w5sPVQy82Qt1eDAs+ykywipMuAXn0P1ZZO3RfPx7K1iOjRTxFLf9slMqzSVVMuJwcF
	 JtW8+RAvuCewc8U+h/dH1BgEXoqm/chE2Elmx/QnocXp5L786RpAInHtExjjvUQ7Xq
	 RhbqCk+vqAY7q3cuKHpKjQwPhF5RTbQTARaqANmeWSOKbhLQgHkmaGSvQbs4fcqxsV
	 ZTBzYVrjHhkog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0200C64EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 01:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167737650574.24714.13749576052831608025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a543c47a12ed1369b15533ee16f50bd9f159937270203c4653618db125c2c17
Date: Sun, 26 Feb 2023 01:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677376505
