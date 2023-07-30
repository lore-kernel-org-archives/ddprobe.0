Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491EB186E
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 09:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D5BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690709528;
	bh=kL6n8zaeGGY5Dj7u4NZTpmQjyg9eNbsMxPTpHUccoF4=;
	h=To:Subject:From:Date:From;
	b=eY58k5m3aOkadmAo7l36JUys78+5kAJa9i8mWM9YWBmpnePwzuC9eCpDNRGd/NmfO
	 wUTGEcVD01gQY4G+RklDKkj91EA/EtXEBWfG2ycDRuvDBdplyffCuxDEQv2P6/InBI
	 3+WeG84Pyc1GeCU5mR++I5847yHn9aD621jJ3lDjb0prUBJ7hbRmY6sCWGqu46Mv5D
	 vIhqX7g+Aid+2CCzYKNUFL7YqkQFZ27EQj7nQ+FpRTfPfrQFVJdx+3wrALasmROF3y
	 D9oOGeQ3owkkaIFXqIeRGGosj43sJadRjdj8dKAqAOo5IsZDR/3f9c3+WnwrXfHwxL
	 xUQvw+ZfZ4l9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC82DC001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169070952870.20417.8440138379838187295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26915fb36f8b906b78ffe27643ddac7964894eb17dac242709f7d93ff6afa008
Date: Sun, 30 Jul 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690709528
