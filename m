Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E641D1FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91637C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670848887;
	bh=cS1ctgacBtsv0/2aoUmwLlh/eXcxJV4pT1K6Ns5X/XQ=;
	h=To:Subject:From:Date:From;
	b=A5aAZmF7NWbD7kc5Z3O2IMw+BC7I5I/5R2al6gc1nnPoU6DvJLT0Tl9tGjW0FsFni
	 CqUWm+7DMPHLCrliLyLqRYKesbxeSw2lrU+T1AZYEkTWgm4n4po44Ey6Q1x2xTG1iv
	 5fHYMBZqReOabv3vei/Cj1xRo/g7NQIimL1UUqWjLjktjNcU9sr0jmsaNdp/UvqdGM
	 41SHazX88ZsUtY85NJKRg0RY8E7Z8NnexaAMBXdzTf8hd/nBiWmPHaimS+/TnRzjje
	 1X5SxGqs7pVFjSbIF/kCwJnf2WqT26dtnnrFZxC06CyQdus0KDfIDlYUVswcxl03Jo
	 K79sh3AH9kT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F90C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084888745.17235.263522599890499166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9726d6539a4dcb7edc7b73330113a18ea3f5838b9943f360826f6d7f7d0930
Date: Mon, 12 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670848887
