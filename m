Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8AC160
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 00:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA41AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 00:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682814365;
	bh=ocT0em2LHT69qMzHqldhat0kEmhTt2EQFC3QoEDMOG4=;
	h=To:Subject:From:Date:From;
	b=J/droaX+OuW6KHSSWv1N8CND/W4YlRUmxNX2TNsaHRdxGPloBJcn4eTmH2axN+f6X
	 lKVv5UvGoqWfq+CQWM1zrtaAJutXw++g1TmxmghlE7Til3zj2RwBSRM2c2FybsbElK
	 4oIfewEDPUeOjQdmYcJCe3++nqSc8PjNWd/YXwuTYgNeWFsSkC+m1htE8hvkrpgw75
	 R0k6QVCg3JDfoNvF/Wqz88H2O09sBzYTn5OvgMrrqozhXJUy+hBY5xiTlFZ13sBMS8
	 iiNdN1wYa3tSNqDYB3auRvASVMTHQhCI5xG5/+7HbW0w1tmb1b4cXgehnPqPJnFNda
	 GcKwO62aYy8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDDCC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 00:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168281436573.12134.8460884960498153047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36058f66feb0ca4c5cd0ba048bf1269be3b2cf40beffe1ac3f088e2a897e116d
Date: Sun, 30 Apr 2023 00:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682814365
