Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67BFA44
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D37CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665211853;
	bh=B/O+fibmVQncjZWUhpGgyjiXDr4o3dP8S9af/wXZFMY=;
	h=To:Subject:From:Date:From;
	b=AlHPaVIQyIXdDJjYvtztRCE2mw2bZD4YAcgRMxuBaxSK22s+V4VkiXhlxPSJO42Aj
	 3TK2BRfp/gMvGKLAgQPGI09M/0+G5mlqZc5y5uffrZCnmdh5uA2JcZtafcWqvkcR9t
	 cJjJW8dW1VOSTTe5UBDZn0Fp5TnTIGCS100YLxtQ7QUpah3eH0RcI1XskAEwoqraCb
	 ndZoHXYUlJCThaX3NE0jHN9Da01mGJVR59yD2u8UUfrGauNGv6yXTQll7Dvuu4iirt
	 fEx2QKQMgPB51w+UgGV1YMLqkqSkBVkNo9o2egxm8JlAf/m6gq2AG6HmwegcznXUSQ
	 cPoICTae4EUMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E92C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521185332.25855.6167965024372987437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80782ee9a657ec94e7d88de2c6fb448b8eb6175948e0875ef0c5b90cb0ae41f6
Date: Sat, 08 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665211853
