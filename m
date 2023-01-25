Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F66833EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11B9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674689585;
	bh=PnSdscAnIpDz6JouhjKZvww4icPHVJWs06d/TKVlC8I=;
	h=To:Subject:From:Date:From;
	b=gYnURhn0vcDbM/hwNgIU8Qo9dtSD/qjdd1layNg96QKJ2phL0QAJc6XuYqg5h0q9C
	 PVxtNu+ql4HjKi/BZ4fRC6yWpQ5gePJU4GPObHL1D/k7HfiBXXin5c7W2/eaHHz0Wp
	 WPSL3SQjM6IeoAsvTlc2sUdRD9hEjSZ7s/lUxEhhC8fvNm5cTmblD8mjN/jSWGdoT9
	 XQXWT2uMwPZ7M6nZr2qVuq+/8JG97kOLcIRGSQXl9FVgwLzN2S24lHQ3sZGkrBxDvv
	 gx1Oe+B9R2lvVlxm3kIuWUc5lvuAFzwpn7rMBX/qdtRwArmy8tLfNFoPjY4hKrbeRB
	 A9T3kAXBxwvtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E86C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167468958573.13852.16878742878017141743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4714ee908421da25a2c23d75860a949ecbaa78caff25718b2d382904e1e28ede
Date: Wed, 25 Jan 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674689585
