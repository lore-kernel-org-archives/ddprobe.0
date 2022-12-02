Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3B87486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D117C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670017254;
	bh=rEq5JZMIFvwOKve0DFMF5lPHqkrT4KXvnx7OKhADgxI=;
	h=To:Subject:From:Date:From;
	b=aKOYHRlBe3YP+E8guIqQqPqsWJflEeJF2PuW19now9a2aLKzkyDgvEYxeTP525NC6
	 quE6YdDqaiwEdk7a3l2gGelrTWQXoB/90LyntrSU6dSq+SmIWDz7ZP3Wt7i6ik4Eqv
	 O+38ZJLRAcmfnd4OSdNuJBwivHjy4qiIrv4WDlIJdfZ2Q5efVVoW/AVLQB/WpSsEO5
	 qHDw8VHwFgi3ZOj3JDPhBEVI6cwBtNc4w7uiV0Fvb3el96Yku2pwTitUwHkfACdxvh
	 ev8pUsTywe5ZKbjlEpkGdC+05rk48UdWEnfdkeDO7df4yamSfBdlZLCGNAyvEng5Wy
	 IXBfFGTOd2r/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B92C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001725433.9518.9278575150643163729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d0c5aa29ac635d374603da7cdabef0738e5f239cd849697064a78d0c78449f
Date: Fri, 02 Dec 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670017254
