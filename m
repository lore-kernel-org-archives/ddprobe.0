Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10577F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80846C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668557454;
	bh=mbctZoDmQXDOx2TL3WJFWHK6FvR6x2imu4TOT5si9ZQ=;
	h=To:Subject:From:Date:From;
	b=Qx0iq5syQVVa0XZgZxrz+tT0jLGTbprACdXW8nLa90iEvx0ij5R+NhA6xOVgWOSUE
	 g33gxWkOKdIHkZooso4HryGO9B5gPAVi5wD+5fxPStaGCkt1G7qV1+j5v1y6Uu3FjH
	 iykuaj+1Bodpqz+QaxMfqDedHTAfXaYe1NrtHoBycp6RtbZaLr8Qj1KSuWHuD1pEm3
	 WSom+YOlcW3jeamHIZeMfosqv48+RkoSq88+0XeovUw9LEt4cAMyzBFSgBZSTq44Nx
	 teOFf9eXZYSvGkrvxxeyDNljgXa2JxTzixepgYESqJKbCeeHuj8VU88Czb1g1YQYCp
	 z/pTJb2Eeh61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639CAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855745439.2082.4642548060213647208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9620d920e7cd23c48b66a692ed27b9ac38552500e4951ccc18c8997176d9717
Date: Wed, 16 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668557454
