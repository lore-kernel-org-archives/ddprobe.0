Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F319FBA57
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C87C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673654487;
	bh=z7+wwrKawDrTrqoQoi2dMbpOBTERCCcRFKK8fPQHZ3A=;
	h=To:Subject:From:Date:From;
	b=bmG9uJo3HtuCL1n9iRFVeyonrjV95nOaJL7VsBPW0iqeBCDBTSsP1D2J+dLEXHFCE
	 jZFaAXcSajiwFhgyB6RXAnFbtaBJBg0jeWDWMZ7J16cjvloNAfw4r+WrmhtPzNiXIK
	 RNmS2/MFsAf8wQr4FP7RJyYXHxgWUTF9aUyGweHWzXwkwhPVy3J56T7lYLhJoIL+R6
	 qrxRPeMl9II2cXgGxr5AMya6XfDL7EwyXAFhfJRGpGZtHM6T3VWDN8DXdPiiLDNkln
	 bJDNkPPrJIs5PwR/SZK5XRN1C6dBsZyjmbviYtALF27Ea6k+vhcaTC6MMfzQTIyJOs
	 cfkrd+7EUHnWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8A8C6379F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365448743.26616.11220617780519109301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4b8c4925f8ea499ab57294bf0adf9c35b1bc5e6e108d061ead7106803a18fe
Date: Sat, 14 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673654487
