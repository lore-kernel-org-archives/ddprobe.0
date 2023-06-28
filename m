Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D9C1C37
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCCDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687921388;
	bh=RkfiU3N1dauDLkrusJFVMxafA3kiQakKyjKWir7fjeg=;
	h=To:Subject:From:Date:From;
	b=Uakn5Rq+qCOLV2frfOqxC6vXU9sNCw22RgEenY8ujAvir/vIXcAejoxroh6JTByTo
	 m/kg5beqrUn3tuJzh+XHvoQJRCrdBt5cB76WKlzhAScOfK9L/SyHg+Y7l7uXjqZbmW
	 qMDWWtzhjkBYV1qw7gDnOLlij4a0WWOLPVcP4MkfFGhALXRvOnDaCNv7ZxF7mJhVeh
	 2MffYUIjkWXaHeL9+iJy+yFh67OWWJknSNomLpq4wQIhLtfUrkz/78B78kXWQuIVRV
	 jLk0+hhBdQjmLBJ6s13ORnEh4GPRff4MsQbImGSGlWutiu5ecLjTFk6ief05Cv4s3+
	 vKMXtl5kXMTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE43BEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792138868.15928.16450715924362741700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b95fa6097b9c3282831c134eb4deb377548febac589d25b971767c17263ce9
Date: Wed, 28 Jun 2023 03:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687921388
