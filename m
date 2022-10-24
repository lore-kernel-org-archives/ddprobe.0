Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3E1659
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E6EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666594853;
	bh=rYxQ2fOcPGQbNI/jJcW5vfJw20U+XXQUP629ZgRg9O0=;
	h=To:Subject:From:Date:From;
	b=AN/qajwj7XEWF+coRfVNZ9woeFqRHzna8jb2AqgGraU2iwsdLuMh3tFPse65f3PR8
	 e95VJtzwz3MPahcwgQ5a80tanJyymDR8TPnzCPWoMkFz5/d0apUEoZrpKDBl4dfaaa
	 XAb+6WY/bSnJ2xfQx1LjG0iXallAIwaoVchsp8oEwP24UVpz3i3FLMj2A2cuZfm6SN
	 QIopDzQ1STYTe9OUv3AvckxK/95TOAa2xMainPtVZoApCLrgpWAfusz+V7XFJIBL+c
	 mPP8QwB7xhMbXx+UfXu/dJ5KWwEnPjUgGBDFbdeYqqniXyvuG0ko61FFtl5gzAi89i
	 142k2jpyWefpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57595C3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659485334.3170.11798587301811587643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65396707193785ace9f983396dc82d6f5f6c607bea899690b556752814f8b8a6
Date: Mon, 24 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666594853
