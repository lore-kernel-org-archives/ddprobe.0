Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE3A134C5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 22:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0A9C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688594828;
	bh=IiEurZb32q5aiIUsIO3kqJCeFcxyEAhqeADoQ0TczXA=;
	h=To:Subject:From:Date:From;
	b=FYXnAU7FLFgH1G5Ffi4S8hQI3YNH4XHpu4qIAfkdhNtbev5XGOas8aONtlefPXQvx
	 Zo+F89yURGp6kix3j5uJpkyAuD2dASOWAJJXAwtlLR6bQEgcvVzQ0/S6ScGhIZGRU5
	 qbWQnopNTmabDON4tfkZFDlwhT2SH4jROQlxU9jt2PYcy0xIoPetG91+eck8FiyDNj
	 Cjh3mO4IhK/wO7d59GUeTWHB4Ywv1fRnBxDrM7l6gGGMA+J8ako27DNX4b5tn9mKl4
	 eLDYrzShbAJNTqBq5tXMfR9e2/Y7I7McbjB/+z2u4kHozw8Jwzx2DWA1Z20vCN1YV3
	 OzITxKdk8cXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B5DEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 22:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859482874.18942.10533619064264068487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3d2f4f27057693ee264089260dd506f05d9a4d5217039f92405c80689eecee
Date: Wed, 05 Jul 2023 22:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688594828
