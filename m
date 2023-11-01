Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2081EED5
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5TFh7GA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 897ECC433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698810496;
	bh=GEDU24yg2SpqRNM0I4bnCjEcwODuHnue8X88d63e49I=;
	h=To:Subject:From:Date:From;
	b=l5TFh7GAd+BYZ8ghRL8Fh+ah//Fx38eJDaQff3oceNdX4uvmr2/5CYFqTT5k2gJX2
	 xOS2K+uZgjc4H11YFQYRZIKpf0/TqQ+gMCbU+8Cd1wg9mR5T4VAaMgwXaHGGWyYJy0
	 BtFkTEmjD9OrUVCkSl7hZc9pDJ4cjDfwXL/j7o9sQQ2sRFEUe1DaunTRC1wELabmOS
	 aw4K27ltNcN7WzI0pDlSnqUwPxWDyv8BHSqYhq7RbiTDruUn/n1ju1JH++y4pVgeVS
	 /urH2SX9NxLKFJiTB7vTZLUk35Ao0knV3kCmeXtWLXxA5cCJIe2bcqt+4AzLq6u1aJ
	 81cj/jywhXXDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65989C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169881049640.25172.1472546962880761961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709f8019e01af9cd97921222bb2de2628f80f3136a894f59a07021b88118db63
Date: Wed, 01 Nov 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698810496
