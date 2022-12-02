Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96784C71
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64298C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669996854;
	bh=8KDQ9vC9lxVSOAlmxN0nM/7puUk8UjU/GIGw+zv/jes=;
	h=To:Subject:From:Date:From;
	b=Ep+mzkK2kiHAB5O4uKeQm4CsQZVD4FN5+a6ljbOSsvCNNZ7fLgauX9GGGO1nfaaFE
	 vnDbFNdZaN7sLTbTqhNLp0v2/aeUmF2+nonhYwGTu9EnLwH41jjss7pBB/23uWTR6i
	 H1o6/U/W4mbJElSF0RmAaY/OqqT5Jds/LuNuVf78VzEc10qrPZIgXLBECEqzn4nAar
	 4Rf2beqr0ITLlfOE1vQAca0kpEWfDIK37/DfwzvUGD/2QkKyqxn46701XYri7OYPyx
	 OY5b/xhLNqA8Hk0k+nEXo/vvJeGC04KhECNlu0x5sYXvEGqFWfol/NRM6qqVE4GasT
	 3lxUy5a7g8XLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F10FC47089
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999685431.2809.11233349440131786645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cea274a38ab0f19ca442af7552f82134856f7576eaef5261b564cd91efadded
Date: Fri, 02 Dec 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669996854
