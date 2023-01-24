Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C2363BF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F8BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674570185;
	bh=EMxlNlmKDuJYQdKF6kUGQMwKOzrkRuJDSut49TEjhjQ=;
	h=To:Subject:From:Date:From;
	b=XEJ0GLgDAXw0CU1Zwogv2PtReUPWm3jQ7YlPuaKTnXu1oUq4Be+PBU0VP4R71rA9M
	 kDbKaF9lyLM/c+/g0P4AYkc13fIoQzME9v/rgPUtZP4u789tA8KejmDVSgQNSg0ShM
	 ldQ2dbGC79qqGmEow8/JsLD5uuh/yxOTFEENtw9jkbO6A9XGikjOT3uCbeFCAjKDOS
	 QYi9jiy4y/YGzeQf+4h1ru0Mpz3wcPjP4Nmctzi6p3EObJaQ3IO2gA0rm6kIe71dDR
	 PuEyNYPkcrUVwfkYjQ/n/Ofgdi9Te0YdioCv+TlLda4xtN9h6/O3rvfMQPBm3rxbla
	 zfw2OQueiwIJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60BEC38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457018572.18635.17872405997484917708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbda26732881f9282fd6e340fda8c257e262900fae0d923ca880f7a1b30c68f
Date: Tue, 24 Jan 2023 14:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674570185
