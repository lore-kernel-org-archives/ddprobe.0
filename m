Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4130B1FB1
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 06:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E890DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 06:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684133945;
	bh=/N5WVJ/itdypdXntiXvCutyiP89aCEovW40c5POp8lQ=;
	h=To:Subject:From:Date:From;
	b=mMmVd7Ot+HsbOdm8sTq5OCf7zVkYlzqLl3U0Ydpa2TPB/2Sm8K+lSKyoI4qdUrkIo
	 zhGvbG7iC3dSIEPX23Kk+MbYpltRxyzV/X/ibRJyLb54PnvrqmoNDjRzYq6K0+6ECD
	 8Lt+xCz5Mojuw/Sacv00AfmS49MYzFmgTyD2SEm1Lc25OXF0p5hAGOqG6+GX41rYT9
	 P/5GkCAFKoe4kfPcea+5g8tcIGnA6qBW33EcMbcEsxk3T8KkQQ7O/GUHs3yV/SG5Fa
	 U6CyrAx7bw0oqBL3RMSAdUsPiDYAsCT57wDExiV42S1jo0wUuepnXd7ddXVv8NwYNQ
	 sDDNJ8rILWroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9950C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 06:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168413394581.26866.14299289310830982367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0218c22c78214cbd70084f1c9d33f0b1cab14bca1c357a4ad900148a09a02101
Date: Mon, 15 May 2023 06:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684133945
