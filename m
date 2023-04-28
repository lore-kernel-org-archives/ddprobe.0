Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7632815CD
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 167D2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682649726;
	bh=TW9Bww79K9/WWRP9cZE9hDmWm18LK02RLP77W3FtQMA=;
	h=To:Subject:From:Date:From;
	b=tj4zJRuEURDyu4ZId3UMyoB4eupXebqGeOuwPUsCnWU77iTD2qS1NcQDLZotg21to
	 O5dzfySS0R7kK+Mc5jnMsS1b4oh71mJNxP+WhdLc4VAK+mb+SilzZrUN/lmpeC4zVN
	 KN/SarCwHfU93wAt8bdz8UZiBQvgCIz2r/LjAqj0a3YkrohpgCoepME/YjfmHG5rkm
	 F36BUCqDg27rZjXH4Du5CzqI49CVEPBwGEYdcazgto4UuTp5rIiKCUUreHRFdIQgux
	 cXKhtPA1TUuPEXx/XffV/r7EWR1vdY6ZBSF1Al3sNaWLn5s0N4mA/qZ9FHMjXRLptE
	 ovt3F4GByGkqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E99E4C77B73
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264972592.578.7665088047378387632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587570519a7d9c36ceb1bef232a16fff1890af9c00531ee824e76bdc4936ff40
Date: Fri, 28 Apr 2023 02:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682649725
