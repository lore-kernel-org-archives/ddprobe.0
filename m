Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DAC139C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79307C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667617854;
	bh=9VSYXeYHOhgwCn72zlxrti1D7JNATVdfoUUpWarQSeU=;
	h=To:Subject:From:Date:From;
	b=ulq5PipbTEeda3HndVZdlRdr2M/4QjCH8kM0JtiOjSH066Dx0bprCrxpegO0HrVN+
	 DXOLAgWpeCCZYp6BoGUfphegvHwuWX1IC4jSz4SPpPEvRLiVlTleQV25U2HBgmaXxQ
	 v3VznPbOFH3hZ1Lpli86WFVqwBKtiyDefhOjNRse+pWyRbyM1GNjAEDFPSKN5QwHtY
	 UGDqYudQM5AUeuX0atdhAmFpWiLHb2bEcowJLF5kWc8Md96tOt3peUC7wtWpzw/Zhj
	 cQtItqAEf3wax8LFxzehaA1TqSqJ/iIBcCiewh8sIHKK0zERe3qp+QHQN75EhHbZz4
	 JLaKqg0dKGpLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60944C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761785438.28264.17055568833731038876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f8e5e25ae4c18298316415d2065eeadca7ee5067b2af46be38399da91f73f9
Date: Sat, 05 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667617854
