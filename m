Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF248F65
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64C05C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668790254;
	bh=rKHwKLOKYqc1rLAiiJMHf2MP2p0nHwjoUbwwi35if+k=;
	h=To:Subject:From:Date:From;
	b=HNiqsD05oveOrXDmS88Fc0nHW9PVUExSNYiWxQ+DSXMb2eK0ZrMMa5+BlItM9fYFV
	 HziCBkoOInbzgJ59dpTnQlO5+MA0fc4ZM76YOAtsbBVwxuaaSTGaGWSl7LkGT/oM0z
	 wfWQ7MA7+cxEES0w4k20tHdqF4nkOTRM62lsqDwvYKIW3GNlvWZBV507W3SNtF+KC6
	 2b3Qqnz4xjYl00PNh+kSXCkWQ5zHVF19D+BrmVrCJ3ApMhYTqmxU9k0XN7A1Mapt8K
	 quTLjQLodVyGqhkAfqgd3d8d1+cD+ZYuyR1YXr0HSSs51xMdN2aYtLD7HeGoYnoknm
	 AAikRxPPuKkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E804C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879025431.1218.14793302058085248910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f5515b92850612b37ba386759838980008859f53300055c70bd2eab2880f5f
Date: Fri, 18 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668790254
