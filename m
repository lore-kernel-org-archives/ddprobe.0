Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00737C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826DCC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670120454;
	bh=hSD35B10AWUDNDeQ5n9BuGsQOMCVtnf3NFq/X40cZVo=;
	h=To:Subject:From:Date:From;
	b=iawwnnDGogoJLxgAQq/lKHa+vqVLbLwhDBm1cUzX8RmwGnqSy4P1P3UUZOhT/Dafd
	 mmoEdiabPssYy8PSCDERAE+nSpuddOWwPYvIXLkd98NCWb2VBRTX87Rwim7TTuMDjY
	 c1sve9pBeSy29depKuNEB4i6Xd6W7sTtBehzBH60UZ9FQRYJwsZPeVLPAJ/BQlmt5+
	 Y0b9/PAetvj4neUEXlalKbXw0txPSf1sQPllVDYhTWLevO6XMAnMQHppnWNK2WzWHa
	 6dlqPCj0cciWeikwtNwJfhEr4FPCbIUPGT4eH8V5NHn/+ix0ismZgxKT0rqJZRqjxT
	 eW+UK7hEbCBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2B5C352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012045435.6829.14934778650672600002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbbf23f3d683d56b8491772784c812631cd9707364371faee245ac54937231f
Date: Sun, 04 Dec 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670120454
