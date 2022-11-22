Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C864C6FD5
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B924C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669126854;
	bh=J5OPoQIu671rKDzOc1yIo2KsPhG+66tJI45TY1Cgu/M=;
	h=To:Subject:From:Date:From;
	b=YXpqos+MvQyodX3rusa8fU3npvKvudCAaoI8Shhvx1ac295OS6eWKTCECjst0Yeop
	 4Wd9CK6UYeTOcbbxuJqp5C/kDTA6UR9GirGFmgbgycrwhByCEjs97arz+LDcYYWfdd
	 QEXTGu0sU1D7Q1bqvMIcyjqFx7XOvRWE8L/zLwrq0bjoB6WanmuTReo+lHp2GkQ3Qf
	 BeNsc/lQ5Zci5vYJ+J+olz4SfMOhAaOSueqmnEENQY7Bk8/W7tWWZROofK36rKb8FG
	 0ECVAJ37xyYccF3jn6iHGKTF8wmO9/iOKlWb9Tu6HphfbWA6ZGMRPOBmqX0tAtS3rd
	 18X7lnpv2Uzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8A8C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166912685436.8676.13965519287657352380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16790ad56c0a780594ce681c684de0a17a02184b84084f0f0edea2585d0ef75
Date: Tue, 22 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669126854
