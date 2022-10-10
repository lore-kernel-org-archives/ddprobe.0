Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8C033CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72847C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665423653;
	bh=TGCYTC59aFPpVzffmR4qE3Xrej0U+WRVn3vEd6tX+iU=;
	h=To:Subject:From:Date:From;
	b=O/SnN4GJAZXnwGbNNIYtBNRiY822exEdadeck3fH+nM0H9vL3rI8mFx7R6vyy9M5M
	 jGa7Q6qdwhTWNXmFjf0MBMN9LOyf8gLaMelYPiHD9RvHvhcJsMTGu8r32O9OEbQjmC
	 nUV0GYqcz1JjPnqAO+qm8LU2wgogziq+RcM+D3L2d6+4V+OuT2TKJr26sclWfDZo/3
	 fFriHPrLAUb0iI4WeryL6K5hrqWgYGWNsVWTWN22L+w7YLAXnBdl8gXF2ZeybqWXiM
	 y7pDDxOdbC9Y87ozKxv47Oo4qUIZOuZDJiU6gRoew08TPB3NlQ2bKDPQ/TZn9Q/WBN
	 ItlJGYRA7ubOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59095C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542365335.14993.12785057503866747809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34771503b24505def2581d62c2afdd6328d6491154dadaa9c133af3bd2e1617d
Date: Mon, 10 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665423653
