Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CAE23D9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E507CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682593265;
	bh=wVS/VRndHUO3TO/lMThdFIIqxhB3lB+sMTIOxRaAyfw=;
	h=To:Subject:From:Date:From;
	b=aBjjiCorNL8YGz62BTp6FgCdRuLTxSgM48XaZODs48q5qrK7i2vnOQmxYh0z9bCpY
	 sXJHetqPwpzgw7/JRV8GRDfNyv+QnTBUtON4Mg5QEC2hL7oDmcaFTKARv8NfkH+9Ay
	 noZchBC/LF+twhnVLehvtcHlOJYAtS7KbIbeZSF5LsaJA43nr6W1bfN5X+D7KYw8gr
	 A+oIPN98iBL2EXS0W4C/51XgbgkmmFcxfF3akNWGewVg6Ao/BQbVY0WHP3is8z7MDO
	 6GFCFjhjjJNIinEfBbaQB75wsMiE0f6vTn6+GTeiWQou9wxH2rt1STwbMpnwqLu39F
	 5wJkdBMllIzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E0DC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168259326580.1815.13047372171855078190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054f5a31f811a1832f7710a29e8516521bec2195b90e53ba5bf2ced947264b64
Date: Thu, 27 Apr 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682593265
