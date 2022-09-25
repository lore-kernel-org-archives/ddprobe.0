Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F5F4682
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E71C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664149253;
	bh=+I8cPyv8l11sY3rjsL9M4KUmgdV1OE6gPic8y3FYG6E=;
	h=To:Subject:From:Date:From;
	b=lLnlauJimoO/A/uL6zYRFaNjGTgkGPmCU51gaAMtoH4yE+Tmp7CP2APmKEFyehplI
	 /WXTZ7RZE3YFbA/v3o1q8Uq45aADNlJQHMFdTMjE6fnOj8fcbFCIGq9EAxeiTz0ds+
	 CMAQt+TfBkplazjTdeE4PZDgVUVw8ny31JSUKJ8hQAXyITFwxUAfblVX8FUFCTx2X3
	 3FMFdSnqrZmPBrKMykfqINwg6tl1e0V4MUFC638MZO/res9/2KD0Of899Q6+0b1lM3
	 +hUISBM3WS8ESrCinbMbdvkrm3p6RGQSezCYMxSu0AbeNmUaWzCeyakspOSQTIg+ct
	 wX3G/Rj4oXr7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594C3C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166414925335.31141.17677353834133653421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61603b11c284680c5d984e2393788dfa62768f51b750bf97a5053bdf79f564e9
Date: Sun, 25 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664149253
