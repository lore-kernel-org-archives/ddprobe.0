Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE392362
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E4EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664238053;
	bh=AMrpyEJtDkn17oxm6VEKDFfyz5FM5nI0sKwa/ZRh2sM=;
	h=To:Subject:From:Date:From;
	b=QZPyDPcv2FUm2j+MkdocVt6abEbz0l8JGLB3ydk9p+e2/qSsjWlXu90hKw6rYIBQJ
	 5CYuA7JJ7qLar/LX64RPbFP3GBSnyIcX4HoTVgKlkCXu9NVFAgdmvWwXKG2BFYyydx
	 P3xAMC+2l2M3q/DS7m3XVP7mLmJxbalT3apr0geRGzKPjHr6ut6lLSPFqs6nliwX3a
	 aEx1f5vv/tvXd75aYQ4x2mSflVl0xgHKDyMm3E1+uSNr8Grnr0+bCzWWIYMmKC9hwD
	 UBohKNZpAlSdhfi2OwZfk8ooIUJ0NfYL9m9J4qwJQQToE81tPdyQrI6CqThvwy8MX/
	 DuFzdJyHBR8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B20C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423805334.15194.8908995634046153781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8292ffd62c0fca90db2622d09c7cd4b2c89776e1059f17bd05497121fb2e4d57
Date: Tue, 27 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664238053
