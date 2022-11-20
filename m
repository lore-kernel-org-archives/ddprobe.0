Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD459211F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E45C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668964254;
	bh=CT2yQITg2ipOv89ChtNoSQckK79dR74zTdiZo7juoJI=;
	h=To:Subject:From:Date:From;
	b=toLw2jWtuMkCxyj3pu+T4FGyk7l3lSRcFMn6WXMLMxA4SFH8cxqDuCPrCTsD/AWCb
	 q/m9pvU4ejc60VNLUmqzkjLtwuZh/2IMoQweWGtUthL+k58AEE2wJe5VRM4LUiHDbs
	 FfS8LE2q4Kz8rT4NYNe08svUhUXzX0UoWmSVcr8sTejK29tzFlSqPis+WAkcp8eOrH
	 VPC+5QtRMOFYuN3quCJd4LYtDxtTl7+l1qsPB7N5hd0/+vO6R0paztktAnQRuDOjUL
	 NA2SgP9d6nMNj/JfkEJ6n1fuYHeRftp2R4QtYhGe+Hdl92uElJuhVGj8x86a2Buea8
	 1quCQWQk5NvYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54320C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896425432.24784.9984638339171319399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c994d1eb9ff899107e69a0d1a132fa7e90cd448fa27068681a5ee33451022735
Date: Sun, 20 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668964254
