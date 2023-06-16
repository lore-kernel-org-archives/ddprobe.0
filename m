Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBC17C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 04:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08B0C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 04:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686890948;
	bh=SVU1F0rf2ysNbr68QL/LiQrRJ2jMpcprOieP3aSHngk=;
	h=To:Subject:From:Date:From;
	b=eDkz8wo6uB6DIKIsdz7MBuwKWg7k1WtMZ3JGgf3rNuEdKKmH5h6CPSmXqNQ0vbMys
	 qUZCd8AQrF0iwAqJkJtHIgzB0sY7Eqwl+7G8RqexXqxB2AJm1R4gjbDAvFYC73YlRA
	 x9y8lUANDPuoKiRv5FRyN/tOeuLrhQunoW+/1OQ8Hz1dNFe4hNWgVrAw+TCXbRZlEu
	 +M33No3QR3RrkEb4445pjYl5b7K1NiNo1wO2pRgoM1PYXg+kPNbMTrsk7aJz8SGgUu
	 cn6c5hP7r8JrXUfwcDdzWymjZqptJIiVK2Tm2LisCDeqervNI/VMpcTMOl55AV7+wk
	 T6OIWIyAmE9mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD3EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 04:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168689094870.4599.1835121392889909568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8877b1a6e94be4c5226816c6aeb1c337af44148ca69081c5038dd1eb340c025
Date: Fri, 16 Jun 2023 04:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686890948
