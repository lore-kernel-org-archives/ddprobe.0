Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9041C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 646A3C4347C
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666908054;
	bh=6DnpBoXmfw+ROKcFp//52FnyaFocqU9OCvEdfs3kois=;
	h=To:Subject:From:Date:From;
	b=BT6/1OdUDjcLg16P2A43cztbQuvfHoNcRt0h5A6dP5oQ7z0SwdPZgmalqU6G1LTlV
	 9I+Pq1YzKgm31LaevNSLPzjtEbH9bWkO1ceGIYuHEHepigNYE+1HqRVrTA4Vf+FCde
	 KnxYp3mypCw7VWPenZkYE6UStdpEhNr9dmYBqeK+ZtXVaa7no8UwmEhEYXkSSiTjFY
	 0Plsjp5n94zngPu5tbSjM80/xnZ48dKL3MCRALrBxOvC6SuWFdTpAvupYykDT2k38B
	 N7gb61+yiZwnLhr+2nwOd5sB+rzmtzE8qMtuEtTYqyO6VeA0UEDSTceVW2liszqtkU
	 THWbMkOmEsVwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F15EFA3743
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690805431.24529.9718812074060809529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45771a11d670c040722b88e011cbc420b600e9366a811364b454042716db9278
Date: Thu, 27 Oct 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666908054
