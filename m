Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581DA1386
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 09:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE01C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 09:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687079408;
	bh=5RPpf9zLP2JgjFm0bRKloeWt3+WYRrnEZSrTcSuh+4s=;
	h=To:Subject:From:Date:From;
	b=dgX9UwObBKiknhfWJpZylhsRkZraGGNFDzS6JhJO+pI0KeieYDTvgKWsvlK5rIPcX
	 b0fxiH+5yrX6MMhUyu054REX/WIDvYf2/EMgkHCKc95IWy1fIaIgo1eIEZ+P9xK445
	 7AoA9/y/Ef5UMNkrE6VoEt9Z0NSY0SmDYDnS7K01yrALVYUUFKcGkRAm04D4PZnZp7
	 LIfDl6g0cijRbCLRRwiGtrh2VBf/AamA+M2tUjcqj4LogyzHnUPAUpxWlzltq6A1rH
	 Mv5aDMLy1l3r1uTsW6GXGACobQM1MT7IKldOcHRcSJQ5aOm6pASHxo3mzrSdjOhkWj
	 x2UdSGSl6r/BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A831AEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 09:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168707940868.20715.6815801566287074773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c1966a56e6d97adca934ce115ea949b2525a85e7974e2dbfa29d1848b60eed
Date: Sun, 18 Jun 2023 09:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687079408
