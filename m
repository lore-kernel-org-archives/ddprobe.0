Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE18107B3
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1BU4zmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8107EC433C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698051496;
	bh=eDpTBeN3pacMdzFqeU0ZBvEUe0FKRhv+jMND+P9NjAw=;
	h=To:Subject:From:Date:From;
	b=h1BU4zmHmVeANnTMAjr/GTqTp/9X8Qj8UZLHed7eW2CG//u4V+Vpy5Jxnq0d3otbT
	 3cV2vB+FDclOyXp8upGErGEL66/31YWNNNtiq0r3EFoEsClujY2MCtrUwVh1zDJLST
	 RCPxW7L82V05mbxysCWb5Nf/6gwVn34bl0Stzd+Uz9bPNbRsa9hIiVi4HpLdbLfz0i
	 lUjr1ojx3r/lUS0lksT9+5fDQ+JCrg9mtU3w7c5XVs0Sr18MIy1GgW8cyrTf8YEa6y
	 A81Gr3+c+z/5fUhHcVCMm4QxmZTOUeKAz+LZRnYL1xSe0AHDlS0RCszfM7R60izNon
	 hGdM97wRIJPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626BAC001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169805149639.10114.9570210720107844639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e24eee5c067dbd487bbe3c04255efb0bd34d488635f725a215f94bee3aca328
Date: Mon, 23 Oct 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698051496
