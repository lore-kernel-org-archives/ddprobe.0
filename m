Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4C36FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7200CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668370254;
	bh=wkuCbL6Ka7FbNfJreLrz8p+6EzSiU9Fs8AeLkTVhYk4=;
	h=To:Subject:From:Date:From;
	b=mdczCE+B/feNWwJ1d4N0HCDmMXvrRHHdTmolldLlEf/WCDEl1K9gYQwVX8RBYLZqA
	 Jkxky/72wXfr/vEYe+7zRliaj3i+/OC66fwC2mp+rgu34FzmsZT1EKFpnIzRV0N+zX
	 9nnUGkO/uLBw5ym1qprLlvplC7qGGWaJqEOdFkLH762rSsBLVLAn5uV8qTQdzArwp6
	 pZvKW6wKzssdy48KTiLbZ5UwRfriRF0gZFYVaRu8lqytCeJNF5bJLTGlbjFEFE2RMd
	 +sLR9AsgltDDwkyGaNY+AsxFmNy2Y2XRZU0L5wrhm3sZkJHyDdInU7FO4edDCWbqQG
	 mbugubZ2u7ZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57685C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837025434.4025.13419474566643199372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a0ad5377013bb79769bcecadc71d07546a3c5ccec5b962f4b3fb6ae4a4bd50
Date: Sun, 13 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668370254
