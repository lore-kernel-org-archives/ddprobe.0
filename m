Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FAD107A1
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwpMsHDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A07C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702686496;
	bh=G9CDnNX4Qd4+V+u8Ble8Gg7GLFMLTff7S2e6p94lsJ0=;
	h=To:Subject:From:Date:From;
	b=hwpMsHDVYZalQmfVsVCkwrWkMWsWY8WlVFy1MSnKptTMlc/pq+sVZWwQd6aj2x9+/
	 Zkvo0yhs4i2EQyJDpPFOqq+Ljsap3/XlpZlSS1Z5HMCOyTi/jIuxp5R6v/CYqhWVAG
	 7fyDhe/Lu3AouUe1vBkeuQImwV6Nq79yTlfKgs7N13W7S4jfPl8VYzGEnnKHHEattE
	 sJMxGifIWxAI/0Cpd7HQfQYteqxaMgTIzSxFhByLEbp1f6AlYZnTAoeTIDgJdInaLH
	 dYr8MDykBaAXyaY4LlwLT928G5yZB/qvKCepAAVHowcHb8IcGihJbatxUvN3GOG+UJ
	 5cTY2EXNcjTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB2DC35274
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170268649637.11814.12779111384220768984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22442335c9e5c44d3fe20a998f338267f3db1ff78e65c8af693121af4bd21c36
Date: Sat, 16 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702686496
