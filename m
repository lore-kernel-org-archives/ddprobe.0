Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1561FAF
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D002AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691304788;
	bh=OR+Vx3Sw+8K0cbdRb5rNFo2jfTLQwHPijX2iWnhMPyw=;
	h=To:Subject:From:Date:From;
	b=j4hE8vyrAStqdZsFg1xxNiI4mP9osmlLV4uVlPihjruSRCPlXXQxFivEK98RGKCOI
	 yGqp2E1HeUyAUZg3mER/TI0C88rAp/1CM8tl66kN6KjZh78PcXEKHgv8BQXM6SFrlO
	 TufWaiwtQ+gL+wea2CB+kjiXzpeSYqnbDsQVBFwjRr4Gxfq6l/vcXHl1ptSt4PJsEQ
	 PlJw9YNtvA34Fo0bkKdmMXqiNHqkGcKPr5rbd8Rw0xBFuu2ccb99mPHSSnghNGvU6g
	 TYKXyJqnc/rm6q5oMhYnv4xeWopOz14384YNZcAHIsxnH9tSecygKqr+MUESIQ5eQM
	 eamO0Rl/OsutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4FC001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169130478869.19859.134603236788888369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad74db9fcef3609295fbc3713b84d06792499e5956990ff1bd86ce78909f916d
Date: Sun, 06 Aug 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691304788
