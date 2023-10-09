Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D29015B7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmjRjpI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9282C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696816628;
	bh=5yu49L9Yx7hXrA21k8Y/H59qJHbO+mDw6u7zH5aH+Zw=;
	h=To:Subject:From:Date:From;
	b=kmjRjpI6ZsJZNbdbKeuQ3krr7YcYSGUUnMVzbrH392yhiBwiRo+S2llNe0N2a0hgm
	 i2VAwst67f/mmP+/6umonKz/IJ0vtpox6I+3j2Vq/jdnAeg5NTmW8JMFXBfnOAgPPv
	 8ejwvLajUSM+aXnRJpCEdHblhs+XZIph2a2c98jx6LDB9qE+YM6N4BHVJUlt8xktpY
	 nbaStzso+/Urv18XVJRPYLGHWUInhvlOhByPgxTo2iUSO1ouZob59fwHAxQWQ2lopy
	 phOepTiUdyBOVPh/TECrd9v5MX4Yn3n/4vvtgzn50Cb3gUdEF9C5q19yigZZp4QiHc
	 aSkZLqDSUwOcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CB2E95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169681662870.22395.12044586977448727002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615c2943f7c6b7c05f77aaa6cc4cc4b6e4e7a2ae4623d3d2358f26784a0e0eac
Date: Mon, 09 Oct 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696816628
