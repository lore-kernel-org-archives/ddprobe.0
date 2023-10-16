Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3981C14
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOSNS0i1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB041C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697432828;
	bh=GMetIvzYwqkxahQv+uR1UgZ+eOZk17xgjbmyj7B3we8=;
	h=To:Subject:From:Date:From;
	b=lOSNS0i1TTjVRYh5SZrNNhDhXGzSixyBp3z6ruXph/gXJN6PMeIcAHMZzW8RBA1dD
	 7xiKVLFZ03QGozgqnBTU6wCwllJQ9PMRnpAVhzHJSV8Rkg00CojjN9jBlkMT8CUTn3
	 L/Wx9/HbMugadhz8EMuyuP/5kpe8VEZ5xHQbFaEolEDY5v6ZNHCxKTQXClx1EiamhE
	 D2jes1ptOBRc4fb+fqPS9sg6CnyybIS1zQ4BLZR31vJYlPPA0k4M58gIBuzftE0u30
	 yc27CxLO1LaJHGVj8TRLbr2XJ3p3pK6P0vfxn7nXHrg3l2rwPdqp9/kDJuh2HsUXgL
	 /Z4Dt6FXY7efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2DCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169743282869.30564.3436052392028974704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a1953393c224899f5b56df4aa26bcdc9c5088c80563e2fae500e1ad5aac136
Date: Mon, 16 Oct 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697432828
