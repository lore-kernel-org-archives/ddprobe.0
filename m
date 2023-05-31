Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD1C186B
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 03:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6365C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 03:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685504645;
	bh=AlR5Ym2+GLei50jZgLRSXuLEPZPDIEHK/ceCkg0NVtY=;
	h=To:Subject:From:Date:From;
	b=gssCTLwKS5dPjlXIFk9ElLlDA/L7OIO4/ffleEoGpKvU1kQSe8gRElAm7G/CDML5O
	 MKn83khwytaT4Earxp/0fdKF/mgA+EzDAS8J/4TEwL+/dpY4KNhhFRW1c+06XN1i//
	 Nop1secrmt0jtfbeg/XYXx02rMl7dYYkHYtsbpyN+dM7xem23f2SlAV+YzjvkHUZga
	 icYj9mu+ayo+UFnga5xdklD3C91uQb/L0AIXintT291+n2tGE7LrLDe1z8No2jkSlW
	 m1OKbeio4mKw6YG9Uru+Z0fIo5a4zrc5sAgkom+WjKZSQgFS8F+t0huTZYPK97jJuq
	 /KymQP3W/LK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8138C77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 03:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550464578.15924.7877479640517086783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523956ea8161e87eb0f6a3fa6302d9b1050722ddd0653da6baa51f03ec75c462
Date: Wed, 31 May 2023 03:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685504645
