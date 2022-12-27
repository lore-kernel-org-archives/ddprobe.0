Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C856ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AB9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672177887;
	bh=DuvTiCCPfi8ciA1ZMpGpBBKZSzrAoShnSeN4VgNV+gw=;
	h=To:Subject:From:Date:From;
	b=kDksF1fa8Z3GCNnQrcOjtiwV7psy5zUurkCDRfiMs87JN+1HhIB1UxsljRYFZa6JF
	 MjiGkKPhtrnJsjZ9EkXRfxfeMWeL5s5wbOlj/N7GCQnIbJ/HA0mNzzx6KfDV+6ZxQE
	 OP/cLnlEx3SvVXwfk0Gz3Pra4UsLbFR6wqEWgp+9N3/KUPBuqwubFLaDxfCqCAjZ6Y
	 QjxWJ8QkiqERfzs8wjaeNypHIBnfXB4+ocY8YbFZKFt6sDoqRyQxNh0mUPtuXbTlzS
	 MDG54nSoAiiG6oNilRQo7Gp664bqh+gjQCsFMJcqaPG1PsO9nuiQTVzt8RFawMHxIV
	 8gVnZSCD79Ybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E05BC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217788737.2177.7622221303287327354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e754e56cf06a5f328128f92ebc89d3efe9e28079240d95828f99e18edec7df
Date: Tue, 27 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672177887
