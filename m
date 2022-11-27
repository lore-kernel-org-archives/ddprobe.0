Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D232CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0A2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669569654;
	bh=3w5WIfNhVO1wPzKlWw1wJ+fc3lQK+qnM7gmgiVLtPnQ=;
	h=To:Subject:From:Date:From;
	b=gWwiUebR/xoJqBoP2yHGOX/SMoubYH3/yAK5YzIQmTKHWtdPT0fJIi2WOMr4iIgUr
	 PtDAp4S3/uGvG4Tj3EvGJZkPPBwc2EYX99uvasnqKFdb52TBKqBz8kTtSben0gudXA
	 FosGisoPn05L2os3aAg+SWrZU9OvUXgtlIJj2qGWLFTk5ZVyoiPhnhxXXrFLtCFBsr
	 ltry+Uql+otQecwFjUZVxPxRGWQwkE15+Oq3vuv8fObP7cHdp4KFW07qI+6DJaSQ9c
	 qWxiYcuDwcEj7y987VXzalFLuZFDYqjRlAlaNiKLyt/vo5JBXXywfinGAgu2/gsPSu
	 oTNVmF10VzhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5745CC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956965434.22065.4186586924256797262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9bce6b4aa2c2e764af8c0e8e92c98bc42d3534d8fbfaf8a4abe1b7ddca3e5f
Date: Sun, 27 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669569654
