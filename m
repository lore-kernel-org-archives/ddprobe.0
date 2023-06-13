Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1389933E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 17:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB982C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686677828;
	bh=6j05sH1Wz+fKMlHQnXi8rimLd2669j5qDyKvpzGYE+E=;
	h=To:Subject:From:Date:From;
	b=TFoq/9I4xg6R4V+HU2KnUr+gaxuewCaOJW9l+p//bLQ+bT+XzflC+Yfnuuqvc+7RL
	 GufO4WzgiEQZUWeZ4n2nMWs0ZG4mOQ3Vg6QbBEW8FQ0AWP0piuMIlruACgN07Dp8rc
	 DZ6W9ohMuh03nbB7WpXmlnA8aLa12bx4DR4ZN8zPmhY6vIbPPb5g9OwNBVoQCYkJmO
	 ymRDXAlLjq/kXqTnNz3f3xRvBl04yXl/ci9J3arEIpDwMfMBPgR7AsKYb5HQCe+nGU
	 nKa9Mse+Za0qQjQDYaJ4oJ/gSCrMQjadp5MBcilyPfKbCWOLsDhtQDMf7P1sFSX9nn
	 i86bPnR9sXEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF12EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667782869.1718.11612231928437025873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9b7bb4ac69d92b6db5be918e96ea1322c08635603bd48839686577e294a8f2
Date: Tue, 13 Jun 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686677828
