Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B52622
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 03:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C973C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 03:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679888526;
	bh=i/OXCs0L/963umRW3DDI51VkwoPC3KcXnM9brugVoK0=;
	h=To:Subject:From:Date:From;
	b=vIhtSbaTHV5+nxFsCpDa3gtpu3hbnLuTrN+R+IdY7kdfTya2kC6zKgXdpfOnfgSqs
	 mbetHG04SJjbJP6vvQI45Vvd7UP2lU3vgzrQR5DowUaHylfQuOyN4564xVve83CWsV
	 E3NwjgbBuPPyqDxMOdpahqPiiOziecxYkwEy8O5GPVkAd1JhL3IcGIcVz9odskL4AZ
	 MwftaillDp6q1uNx0AEp7c1au3EMtaIZl/AhA3P8n/yy4TV4DWj8pHOi3RDD6auZbT
	 Q04y/KuGVgz9OZ5xd+8GJJezOeQX9tX3XuNatcrpUx3EZBEwFwDAxipG27kD727E5B
	 Ri4ZVh2ClJN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9EDBC7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 03:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167988852587.6492.10972300324904120957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d79c9a89d6963ce049cae39eb6e14d2bdfe800575f19bcf3cec0ad0aa0d74e7
Date: Mon, 27 Mar 2023 03:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679888525
