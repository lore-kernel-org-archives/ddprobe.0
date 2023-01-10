Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC76419E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D552C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673311287;
	bh=QB9u/4mfMdbq2FRaYiDnPxiY/5JYytsIC2UdQQyPmQ0=;
	h=To:Subject:From:Date:From;
	b=Fnx0yoAh76aOB35hqOzPRlmAkKz6+oXmbYNFkoyyHIqUjZGsMiIwtJIYLo6LCvPUu
	 gUtq9te6YtV1ipl43sdOxjU+36EVUVWCTmZEITEq2Yl+LpVwmCBiCUsnNeKUf49Keh
	 xWKEh36AszeEpfHnbwsTfLXh9CYjvNuKprWhCR6fsuYFh0w48wGb8q/gzTKDF85792
	 4ujn3txouDxGZhb9pohjAvSHWMXNGS2BEiEOZ4RmUxSpUa1SDXhecusGT4FFI2r9aY
	 mD8QYVnIkYKVW8BFQ7NtqB+EAuAFe0Y1kaknalaJKIYWL8gIr/i/ALCMCEXSsL1TIz
	 y6KgAT/jZGi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62133C5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331128739.5319.1535287228731296672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d59694288e0fe95b75f68e3f8e23054d9fa7aa2d3c1ba463aea45ec2ec856a1
Date: Tue, 10 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673311287
