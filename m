Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDE92917
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2C8C433A4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679148126;
	bh=5bvOSUasNiVchLIES4o9YSIhdbDymIAYRpslkrL5P5w=;
	h=To:Subject:From:Date:From;
	b=Di1Tt16FO/KuM5vCPD95YeClDO/Kwx3OVxRp5FzEVd3CM+Ks17tFrhn3IQxoD6vSg
	 1D0CxyP7eKTchQ/hl56tCXQf37iBWjL586IjbaRGNRQTNG7SC+HCl4+O0R7pwV0RwP
	 7n2HcEOzeMv85yLyoNY1pNkkCFsPZrcOWkJDQ0j9h9l1dLP+oUz4f5T8sNix1AMVFy
	 ZCsOUa3QZlWaIy3J+aJt/dqzrOjpVSh2IJYMIiNob5MPhuH2jthvKCDJ4AbFrua/Oj
	 b+cUwt4RsRrqKmEbMNtyGrkn1HZoSBbm7vtHWIxAJVxDXvLZdiS47YKcnodatWrHJS
	 DoMoeSSGZzXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD95FC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167914812583.30287.17752917325469951794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e205dc30d6121a2dcf17e38d6ea45c199198dc41a862038887ec13128cf95c
Date: Sat, 18 Mar 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679148125
