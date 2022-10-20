Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC01E33DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CFEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666276853;
	bh=AQ3Lm+jIqPMirS1EEzzN9oXdyWzem+8tWJJSBEqH8rs=;
	h=To:Subject:From:Date:From;
	b=orUHZIEdZZQ06a1bDSkf6w9ABdK3L6DSrFIbREEUTV+YY3+5/lyU06TkTZklV5NY/
	 kMxusPHQ22/X4vN6Ym+L9hQxJGHvBl9SXJNA/jBULKvw7eKdfzejHIBy51nYfMYz3f
	 zW7dDoY8rCpUDGnFLHPTiWzySxsALulo9DbK9VA7Lc08RnMoUik9KCSox6Fa9mjrmw
	 exlU7wTc1BLOVoqPno1nctW4fuvVzRyp3G7d2Pba1qxFybW5kCRv1/J+TY8unfQOUV
	 KK/8UXnNuvYGCSp+Gjh5FfKHT95i6aLeJGle2y1tWaIqM3a56lMIY3i1vbTciX8lHz
	 cZrWKV/ytljQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B75FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627685336.15194.1458855221878681886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6581e387b0ae69dcdfa5d6d8e516786ec4d88d81db9d3a5a199368230f8bc058
Date: Thu, 20 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666276853
