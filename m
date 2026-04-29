Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE9243C050
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777501054; cv=none; b=l2nI9ca4yHKxI5207qy4xK/DIO1nqQfLDLwC8wiXZVfw+zuxF7qH9MZbrrwYOb+2WrSckqHCgzMoC+TMpzk6jefPGflqZmpVsLXUxmiM+UBSRQsjSb3V1WOw0r1emXHNpC0q/DCVNS6L709Etxhu4WCZV1IJ8qaby/o+5i8KDhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777501054; c=relaxed/simple;
	bh=9CW5ANLSNY+8p2JAKIeJK5uC5qiUg2VrHxmUB3AV/LU=;
	h=To:Subject:From:Message-Id:Date; b=irVds22xtWEI097LX/hnmhjwISWG5G7MxzZQq4JQoLKdl1JktIpHX+6ozSzdx3xwEFnx6bLoSyL1CMaK372AWKWVnm7A44CpVGc4HLcRCL+C2vqgx/am4HzLgXQDpLsHncyAVx+raLwcx6FdI5oeAiU60kRFXsxy/DKwVOzAXNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I27PruG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I27PruG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACB2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777501053;
	bh=9CW5ANLSNY+8p2JAKIeJK5uC5qiUg2VrHxmUB3AV/LU=;
	h=To:Subject:From:Date:From;
	b=I27PruG8IL0Oa4hz6ZxUTpAA6l4jt9ZM/pH3AQfo+xBMy0mh/jF2X9rH767V0QNfR
	 dEGFUCPIfM5hZl9hFp3ZTYtNmIekyQ8UFbTI2JyBdWQVf0KFo0h/bTXRb6sxWJdBJL
	 5MUwv1n2AYZU2Y0w+5+9yxeK5B9C05JSY5eRvqee8d7bkPUataW3N/6QuaEFbwlIGZ
	 6bUdvbStTxPZTIrVDQQF6qSWskSDiO92/bM6oSFtz3DnDwe62WkC/OMQhZ59yrr9yu
	 rne2zhDNqcdhIqdL9hQlAqU0FsGpYsDvDdda74Jrj1vykaSFxtAUzLAuDP/fICWJzO
	 kq7P9JeliMWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC85FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750105369.3545.16350651366738543150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819eb511a050082963aef89974e6cd1fad4e6a251d011b29e06552cd5526f2a1
Date: Wed, 29 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777501053
