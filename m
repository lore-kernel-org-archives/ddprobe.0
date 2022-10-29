Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B4F2F27
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B965C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667064654;
	bh=26cyysgbe9on4twcjvBhOeVPnajnha80pe4EsOeQ4jo=;
	h=To:Subject:From:Date:From;
	b=t2kjE+RiAmXMsR4D7klTMSUK/5fbqJGZUHxvPFatq72Qcg5Ja8DKspQuvUTzkjcj2
	 2iEkTMQYcpm5t3TevucS1G455kQ6lWcw7DlMRNwd/MGcecngWq+C9MuhK5gG4vvxFt
	 SOjVHw/teCKSUX2GBTJhI3UWxVniSz0poSN/Rx/7255hjnIMlyP/8kQAgGysupsb6g
	 7B6GaQkpldNUBXcxyCOC06x8ULO9qgPekEeH8541+/hmEifoO+YoDr7mWDo6DivADS
	 2FviN9LfO0KC98KWxPogzTy/kax8kACZbNseuVlQAMUVHu6vm+ZPgFm2IHtvbt+Hna
	 tEQmrZWQB+jcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D291C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706465434.10012.8756327236305737614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0937304ef6faadf6369dac85f0f48b47ecf500293e0c813e015829d6560bd1
Date: Sat, 29 Oct 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667064654
