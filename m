Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AF21C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC88C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670764287;
	bh=D5Ei8P6qyHaQdHkaI91PktlDMJ5AwZfISZTaVbhPon0=;
	h=To:Subject:From:Date:From;
	b=RdL3SZrKRDfLRDCdpCci3n2cJB0T7SplsDM3t7WOW4MTKPimS2oghV877rICBIq1c
	 Dw6CH6uSKR5iYIgfNSn0wjER342HPwbV3T5TxppFmPlxm3zw7U2OffxNzATUs2v0tA
	 ky3umtJvIJzqWpjFr9Z5CE0lhx/ksRnZV0nqZD/genGv+rfc5wp9wCUIPAuQFPcWuN
	 plF5jMlTmoETdCZ2WiQmk/rH4jEPGsFxtxoXg/SCKJU0mFtOWcekUL/UHZ3xUO7+9n
	 KZmjqIqV80TwaDy79+IycPb0QbCbl+Br3qJqy7IlC2E3vbWo1kZ+sVC4x78gR4AGE/
	 fLSBemodaa2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F81AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076428738.21814.4387883564651859153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334a1436e37781b1217f62777ef80520be03d8dd3b5be5e040e3b80039f47ee8
Date: Sun, 11 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670764287
