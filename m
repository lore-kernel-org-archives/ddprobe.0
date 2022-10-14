Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08C736E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BC5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665717653;
	bh=GTNM3Siql/HPRwvwrbN2yHDpb5HaznnE4bR+1aoM6PM=;
	h=To:Subject:From:Date:From;
	b=gcPFlBPSVfJ9lMJWgDqnbh6GLGdN2jjSX4sMD66sPSMtuHnNO4ucRAXRG1X7wlhLu
	 1dYcBN2EUrNaP1xkapQtbYUlVTe/016PCVy7yXWKKDH7aHV99F4rTdcn6G8xKV9Mjz
	 w4w5JKlLmCmJU2PmR53VCLhMdMSSjRj3SPiMwcFSeqoGWIZ2iGDeERWrfY3OfrNFbX
	 UMZVmNVTFck+hxuRo3JM36kru6LP7q5mbpnylTIsMJVsipdQv1hdak+Rkq1Gf5+mv7
	 We7VPmQyZImdR6G9DWIoOeUPJeiEnmi0RDPK7tcsYh5I+wGm4alQ5gee/54WbxYhS2
	 jvTWZIACSfwIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AB8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571765334.18257.15705935355299155760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa9ce5aac7e1899a3062945402b6d68fcf4d4036f183d962558feca2ea54c56
Date: Fri, 14 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665717653
