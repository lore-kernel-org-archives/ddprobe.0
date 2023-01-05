Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9A97C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADD2C433F2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672888287;
	bh=FLSEHI17CQIHgPx48CJBulw6fCdl3oNQ/eEwMGSZ6po=;
	h=To:Subject:From:Date:From;
	b=Hp8plRm3CZWs+aW73u/OXaYM2vAf5RIv5CGff7Rf0PkJK+sBaDQLmxnwKzKp2EgLi
	 o1aOxPB5O7Wi3PmFEdofbgT+7+zS3uikjlv2P1NagjnhAoBCg7/sKw9ABhgVwLVYvn
	 k7OSglU8KNwYVjOktemgHVoqSiMhZk5M4cmJjcs/DOURIInGWS0F7/3HAghxK4I1x/
	 /NROx9vyEerHQ0DaGbo1GtSeoFPePShecbaXx3wTE5ep8cLdKEq/n5dxDPpL32aH/F
	 mbsPYEVu+MtEzbo8HLHjlbfPXF2eh7Erqy80xthyRbdTkTF6nRwqJqsKs2duwLNYza
	 wkdibTweGbtjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D6CC5479D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288828739.5730.2697274087916800215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7184db4061b29ab6225778ab757995e3aad6026dac45c975b8ed95af10964245
Date: Thu, 05 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672888287
