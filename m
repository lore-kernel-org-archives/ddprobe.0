Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA37A882C
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83673C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671985287;
	bh=CkJmbS0b5Mnuv8DhsJkD4TKGbCI7EcKeh39NEnygA8o=;
	h=To:Subject:From:Date:From;
	b=ewrzWEZixift5Jz1paANITrTeffTlJ8NNYm0oMmjvqeF7QDO+rtY2xplulLzb7DfJ
	 0HTliHRFLzR85Gjyl1XLMdnaJxQ0TG9XYQsEVZmc3xZHjeqiA2r3cAyx8ppO+rOT3X
	 uxo3+RCLZE1YhxLW0yHI+HlJtRtPW9EgyDLCWJdgY2JxWXumAHarWJ5xi5efWc//DX
	 mi+nEVPp5TxIZvr7hx8yCK/RZoOygnfwcIy7R02YEizeMS/pDJmmyjPap36rE26SJU
	 u2gTvJu7Wlhb+lARn2nZBMX/k/TgjNNqtlXqqhfBm7857QzCdwuP5sTULJuUDexaI8
	 QgLwQ1RZe3pfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690E9C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198528739.7138.163231816937289696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2eeb73d6c305909cbd8d9406e5eea709fb007b4f3ff01acd38e9ca100e8ee4b
Date: Sun, 25 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671985287
