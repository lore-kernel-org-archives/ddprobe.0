Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D839C632
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79ADCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672129887;
	bh=xd2zd5zyKuB/T9pFOKYrICDezMJY1kjJaUOkC1YRRJA=;
	h=To:Subject:From:Date:From;
	b=BclN21ZppuccBoCimR9FsOzpUrcuDmT4NEebIeYhrpZikcZDL5qDEWEe4hHCKVZrv
	 t7VjmuIPuyh38bzAf26BQ3Wb5TqCYAvvveo0FL5okzoZCdsIvNWvUu+qkqn0/jaV97
	 78E/oUqPBHsWHdLQ+xQ05zKFYDOo+siUj/FNEJvYtGKmAT09DsiA3HyAJIKzFSEnPp
	 otq9RNIZMebzHdKiX26eptcbxj310Lt28HUjU3vMe8gp7fEkgo0T2Ej7O2JBBB6Cdv
	 8OMfXSQ7LD29ywixh/TPYPb+hMkCDmu8CR58K2w8vUScXoibTGQeL9MvbI6LjQZXIr
	 +bSA6V8V/fO6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF6DC10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167212988737.8674.16155563189896369057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1099af9468251a6eb51125cac38be3b026e1d3f7f5cad279b14becde2144740f
Date: Tue, 27 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672129887
