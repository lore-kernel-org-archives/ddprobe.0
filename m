Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564FBDF4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF61C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687351388;
	bh=FEZv1m6JLSq9XSlBD7zmp6oQnkDgzaOtjYNymR9SnyA=;
	h=To:Subject:From:Date:From;
	b=Ixk+7AebUVHgCPebGm5vY43298AjqIYumC14Yu0u/tBCrEvibsJXj+QqxLavwyGmj
	 D+og9VYBn97bB+ah6ZS6MPaDpmF7Ob4snKnR9AY3mJoRtIk/0QeewqnvihAjSzlK22
	 kFBBSp/lFN+ecaHiekWnQHTydJ5IvMWau5dt+RO0ioNlvHD51XIObgNWeosyDIStQb
	 Hh0ussoBqETeVwfzpM3qDci+47t3caK5tgIueg6+Q/VAYtKZ3fM66n6bkI+w2bfKXE
	 PLgpYplOHz+Gwp5AL9+pdV9XezuKRNfUROQMnfqN5nnpCgGE2Z6KCDAjNEDIr3i55b
	 7nhkaew1Hr5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A7DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168735138871.29917.1212273873183580641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70116d3a9ee379cee2685b843f66972f89a1f43984e92b4768b5c376702f254
Date: Wed, 21 Jun 2023 12:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687351388
