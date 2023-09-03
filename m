Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7846815A2
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D605DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693724648;
	bh=z2gmWNI6aCvNGGB2nlpcST+DMEkbn3itMW2j0GDwtAc=;
	h=To:Subject:From:Date:From;
	b=JBYMNOzdrJGmLj4KpVM8HVooLhqGstXrRbpUd7/Uc/1ZPH6599+16EalX3Z+fdKFH
	 IvZPk/YsS23JFu2TwNwxf6KqAns4p8eSzZo+rJKpUc6CJKJFtfCbPF8VRZyKaaTyBG
	 HVx8oWWgDmmglw6FD5mNc1gZz5519hD2rV3sN/DRf8DKkCBtKUHEPFxNeaNVDORVC0
	 JGwlnilMj0eIyahJKt6kihLLFA/s0WDAQlt+KpaJK3KuzZTyr5CzKHydobrdujqlUl
	 SGwUKqEScaYkzGHxAJgjIsh0OUNXSvzXrYo4kfcXzfeMhTcqWOTZ+4uGfkWC80CGnx
	 5erCfXZVIjfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D2C83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169372464870.26536.11794940699872638407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ddcb4762d700bc6fdc25a4afe35b25009304b7de1e1e6c64f207486a26103b
Date: Sun, 03 Sep 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693724648
