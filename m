Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1555C3446BC
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771442094; cv=none; b=sgy7pzjcRbgriOro4/jDKdgeTFMDWaOjCWm4yDtlU/m7/NYkE9MnuWpqEaTslsyB8iDArtQVsI4gDkO23dZs6pzLZtoFpURriy7ginwUGx/DhZnZkZjZACLBpU99BXD0JTY4JeJ8a2HgiMB5awiG1quUfcnjFP8Op7palEnomYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771442094; c=relaxed/simple;
	bh=27g35w2uWa1PzjDRKrbTiYtbDtXUdfBzSj9nR1P3j40=;
	h=To:Subject:From:Message-Id:Date; b=qP5iUT2yt5rvwZQGyc7Ua3QehJJW1B8GaxXbPC4GzwF5euaR1FNdeqLmKRRepgFmiTIdDvIkyP9ji3s+6eJTDxW5wfGc/r8dykDWx/we50ywYIB6HLcJmqxx6/kTO2XYw7IEmWTQAjfPnzHzJ8tK7/Vt5ZMfmLdbRJ2Vgdn+PKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyl6PqPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyl6PqPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65D0C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771442093;
	bh=27g35w2uWa1PzjDRKrbTiYtbDtXUdfBzSj9nR1P3j40=;
	h=To:Subject:From:Date:From;
	b=pyl6PqPs65EQGp/HHWyTTL4hJw9vJmbDVK7j1LrlEcvZn+qy9k4VUlCsdLqIeCUpB
	 m4NJcxluisOz+vLKi1oc+YpTEzBD8bB7FEI51iCz+M9PMc83lAeTou+WmN7B/7umIM
	 X8KdpazKdVhf6+vHIpUUXHfvWTwrA+OVJkLhxbTzgeVHLYUeISfjaHofwks0xoYgzM
	 vF/PlnBfTxnHlqxa2656OGFm+pIOGoOTg+2q5kvKLhTxEfxvKxVYNMQryQn3+nrMgt
	 HimwRmDgoa7Kz8Fd+/38iIzAzrZI8DpM6xzsRCce5YuFGI+yLOYGz1Bs5yFCmARc+7
	 MQY+NWKpg6jeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE57E9A04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144209363.24188.13353709590547034276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694c822c2da526c59c818459edbe72677d4b8739727479423c11cdbb732dcd61
Date: Wed, 18 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771442093
