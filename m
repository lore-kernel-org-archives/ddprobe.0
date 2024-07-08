Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE01AD5A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720421183; cv=none; b=WYOlOg0qgjlKowu1qCUw6A3pxTmVcZOvBn/cM8uJ/OzI58z9pocU3SCUcwEIVhvGUNLwQcKAKMK0EN1gp/v5pUvTWbKeI8N0e/DnvTTWM/IK8GgPdhpwfh0LQ7Ai6vg08jag9uAGpEWyITX7EkuKs+LtMcHm/3kOPYyH+8xPzAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720421183; c=relaxed/simple;
	bh=3DJnhHDTbj6dGeBV68Oh70/2hqFKsndAZ14FRkgnkuY=;
	h=To:Subject:From:Message-Id:Date; b=e70QU5TUT/Wi0eFnEyO+0PGbotB8OLBQUVw7wgPvVLTx4/Jlr/pdcDab9SpRMdmsowSpAJIsvlMhMjxvydaq7/NUnuyCagFVU5jfyAeftadlqF7uYISGpqm5dZYmrBuVcm42f0UXBYAjifXi2B/QUauqUAw+wO2eAQTqV0uwcvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2/K/Y8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2/K/Y8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B27C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720421182;
	bh=3DJnhHDTbj6dGeBV68Oh70/2hqFKsndAZ14FRkgnkuY=;
	h=To:Subject:From:Date:From;
	b=m2/K/Y8N0sFvHhF0QYQ8AsicUoFsuklinmGBEbKGnwsQhYC2TTFFxfEmPFn5iMcuI
	 rJs8j7lVm99RYKt78a1lURUXyX/ib93r6/3NLm+1XK6b7/l9eNj/8Tgnr6qrxcFrm5
	 8BtNNQVo0e8QxEtq47Y4d1unzbVnVUzJWlhjF2X6fptBhhwOEQaTjJkB1x+nLAlJs/
	 dzR/M8/eszSfnJof4jYEGsqp0driJaogNsrrqfNFe1DGho02QLB2/WfiZAqBJhiMdP
	 Qrxt8lwLmzTfJcJcSLv3R4TiH8o2U0bDNdxoTIx1aPNYVvTw/mzIkify0VOZbPpoS5
	 zysKIlYK6OsHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A8DC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042118278.18541.11168036886678200272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e1861800301df7b0950c3453c795acbe411a06ad4b101c5928de341acd8f7e
Date: Mon, 08 Jul 2024 06:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720421182
