Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DECEC2
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B62C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693206848;
	bh=A8K/IOQYi9sFPzx6PR4VKMaxtCeZVYHR7GKpOHmVnP0=;
	h=To:Subject:From:Date:From;
	b=Ms6A8ncIJnTlTemb04vLILYS412oXerCqEFBPzAwlPftO6UdKFIBlb81hiG+/VpgK
	 neMtid9C1nj3DPQbd8huWH3CbqYprVu3mnCikR4F2dzBRu1oJBCoK6X75D1feUe9sD
	 7ELyRs0ryRzLl6+d50Lpr8uXVovJjcfkMXPtFBv+q5pc+NvUPop84f+hHoyUnnUZUT
	 rejqc/lQ2NH76sLASXmIeCLx/1iO5EPjwFCoUb+17yBpn2pT91/vmFrgMutRevnZUu
	 jX3yo5fUcSQqSg/N76EKO3PxID8QLO+4ncwELAYHhmCWuqCQx8Z84DxUnAsJvyTtc9
	 VVOPWQlZs/qhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A50C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 07:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169320684878.17801.16556889220210505051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c57b45fa301aeed6fba26b46f843fc7950102a54ed1da8a8b71afb9fbfc78b
Date: Mon, 28 Aug 2023 07:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693206848
