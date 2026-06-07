Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAFC4C81
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780790674; cv=none; b=BuCg/kuDx5V5yXBbcDXtoLmciDmr2H02Xiv1OK0QfqZeqcQegd1i/prrLXNQOWSs29mIs+x0lhiUQHuEPi2xBZYUToQnEKwMBk/iTP7HzjijN+TqjtUnwdY5pHDcna938saytL1zGfUGjJdWRR9PGVSJL2Vn2WSrW4Taz8B8DRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780790674; c=relaxed/simple;
	bh=+7/iAOdVZpXK7W/QCHP80oH0X5NcbfjJWrlD55PuZKU=;
	h=To:Subject:From:Message-Id:Date; b=K8m0q6bl69GAcjih+mfU78PoYpZ7DPc4rdktqH6OK3YXfvpsNQZeNWYMITSasxfvBl/yzfHVizToJPcoUFCwFO/6Y8PUfSEqhKxfB7FIDG2nFMrb1CXNeAHzUN3335ye4Tr+G4QlaNGFnUFuhlVOvKF19RUDM+DThqiQ9u+AVVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxxZwHnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxxZwHnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C837EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780790673;
	bh=+7/iAOdVZpXK7W/QCHP80oH0X5NcbfjJWrlD55PuZKU=;
	h=To:Subject:From:Date:From;
	b=JxxZwHnIRXrwbbydIqnFns+NpbV91GW3q7wQDRDMQ9DXMt093P01K4XqWmPbmOX7+
	 wHDreJyGwOs8mIp05bkL4Sx2KQpN6mo1LYqKRuj3gbnqSF/L0YT2cgmUdYET49rKYp
	 9JnphGAd3Gj+WS6YC6QKMqUMD1irPZJ6fBuZWZFUITsdSjILkSoJ6dntXvEVi0P3XW
	 NNw9cVY/7Stz4vdlTBXHgugz5K7lp2aKRr2IrvV5o+ckuTFZ+N4LXvUQrg6lrTkQFG
	 4KWDrn0aQVsuJNIqal7gJtcsjTdAP05xUdAGcgWagg2SnRq1I96a9ujsf9k12RpQiB
	 sZirJsw8K51YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FF5CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079067370.5803.6712791906454341929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af34f34fad8b881029d4316e6e903a0c31697bf5963ff8cfa00d8356d100913b
Date: Sun, 07 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780790673
