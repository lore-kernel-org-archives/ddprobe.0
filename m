Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A0D15DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7857C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687398188;
	bh=JBASwoZAcCvS6zDItgT/sPIuhGCFHhDjqvnuWYdGFCM=;
	h=To:Subject:From:Date:From;
	b=Q92BQLXW9Ys+N++fLeuiMAydBK8jliDTgYxV7nJu99amsK/1ZaGn1VRHxrCS6K/GG
	 ohc9LvE0i5n2LqijwV1/mogZzxQlobjJTk7wsy/m9UYVNgUeP6NDw/TZ4qomgXYaFL
	 1bRMwic09dxofjbwpPwFIPsD79/GcwWwpi3LatLw+7w34feX22L6aqE7w/ORHJESkD
	 wjrDg3h3DhJfZI8svb5f/OqUXKsyKT5Dy8mDEyL7nIVhRSCGAnfWwfu0VUdleZwOhu
	 iJRX4qmhB2+UhNXvJ51Hv94ZOgRTcGndq75h12NQsAc/v0NxP4LUsqetFkLlkRoImP
	 Kmp6MVl3kjeiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B715CEB64DC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168739818873.12962.18186568086144723204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de6e45b6c6ddd6a3b4a43a8e34023e2e05dccc3d6dd4c1a7f0cc0b19f96ca46
Date: Thu, 22 Jun 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687398188
