Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7260013AC3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF834C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685637366;
	bh=PwATQxEffFevHEtQ0+tPOPSn4EEjsUDrkBcXPhhicbI=;
	h=To:Subject:From:Date:From;
	b=GSXQjQjXhW2eMwiNsYGF3rqy9bhrh2Wbr+7w0oo4yop3ua2ilG0MCqPETkRBKePZn
	 AXy805Oifzjz0m3fco4YI+Z5oZaZzIoYH1+7YCrBpqr99++Tm+emugH7i/T669gYiy
	 EUHONP+rJgv1a3Yq6Kq9yj+qOLjQS8EMoY/71F94H0kQfE+djSQIkfsksP7CErTDIR
	 yNFzhsfV3ZN0xxEPBbdSXJ4E5C5sZqnCkeDHMuoM6GfyT8ieQVlVTjiPVt4UVsD4R9
	 teOjJ1BHkLQb1AjB9cNLcnapNl/JNWlpc91guz6IiMyZljauYRhgYUaVxpEBOSKJXF
	 6+FoaQog5SfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0203C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 16:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168563736583.2658.2896673841388957317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6615c424335f9f612508168cc15d4f1ffeb2aa1af7c57bbfa807c0d4fbb00eb8
Date: Thu, 01 Jun 2023 16:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685637365
