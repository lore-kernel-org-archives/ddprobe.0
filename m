Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEF323A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722B6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669484454;
	bh=ENSwbbT9SbJrIMA8CmcRwru1dlUBpmk9BR3nwUlqyoE=;
	h=To:Subject:From:Date:From;
	b=npbFbPBWJoACsNE1dsZwOwz4NRAMkZQVOctoGKADOAhJZrI6qYJmzukeS1iFszrnh
	 3uVq56hGyN26mfsgQgVNpnF1SJBoVLSngCH8hW+0jlkbn4xugHZosDJAmQGQuQ/iH+
	 cLowpUmSowBCRmnwe4xiNHBoOjifPmJmfWyKs2wwIci+8MDQrgj04oZKYJEd3Y2ky7
	 sUU4a1fQauQoX+JM6c7tYFhG3xPbE1aIGntqFSsToBAQfYq0nBEL6tnLCkt70vCIPS
	 X5QS60+gXHcuV0lWvLJ+ybNQI13ebREf/3kD49qXKXwc8JuFmafMxYNR783D8K3t4L
	 08kJiCVo38B6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B9DC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948445432.14966.4251993922129788289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1928c298c66004e69aec4f2b37c2d0ab0c2d285fef080967a969b635de3913
Date: Sat, 26 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669484454
