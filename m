Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9318417AA4
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EC68C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688770029;
	bh=lTE83ybC7zHXkT/8sQGX8Hixcfbk1FqInYH0E86gL5M=;
	h=To:Subject:From:Date:From;
	b=AJOknZ+ef4mxpI4MIZ0lwppK0MmyBk2jm23L3Hfnv8zt6uf93ALMNPhWSBhJVaotq
	 E07+ugajOmZ+9rQf6xHEG97oXFn8S5Al+Ar00L4VEvAQx4tq+IrnqDc70cwfv1u7bM
	 IkvI+lY3LC395gSAf1yF5Ojp8mKj820W3df70oyNi37NmbWoauyPHaASTux4h1wBN2
	 jRocYYNK2vqVc+D5JxiTvThRcsMRy2VJLhJyplqByX6okCCq6/JFnM5PYTbjNHY6tZ
	 1VVI7JEItZpUCyOqgfKlVtiILD3h/YztCMkL596a3QW5bKVRy7Jz2eMfB0RG95+ID5
	 bRlvLvQsupBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFBA3EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877002889.19820.16676722423452114033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a662ff0897e5fdd6284c2b806a4eeedb84b644a6e17773aa3d8763cfb8a8327c
Date: Fri, 07 Jul 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688770028
