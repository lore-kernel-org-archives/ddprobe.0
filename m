Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E9DF4E5
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 12:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9yyMOXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE22DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697029028;
	bh=ns7sUk247loL5sgbFhXFUXC+CVC2aLjDjzuM7OI4N7s=;
	h=To:Subject:From:Date:From;
	b=a9yyMOXIR7baVLhvO09+A7L/mYPiOdh+9ujbm+5t7SWxVa6MHhnhO3FB8gkL1Cg39
	 MVNOe9iNT8C/p5L2IEFshI9Rs2lvx676xPdL4/mdzEetGb88hUbt5SUBinRZtvWSh3
	 +eiSGH3xnrzpC6jxG9vLVe8kZhGUn9vUQ7W8xha3xXq260S/3sG/ysLExtdHPppXdh
	 79vaTJzSveYR+6HP77VO98pvrTGhcfCLWTdifdsROzm4Hsh451yEUOHR5IcV+6k1p4
	 hA98gQrW36oTeoyfgKPfppHdSVEe8j4O+fxrSHGOqLY7gTiPbOFtzvBzjxRWExdVhv
	 9aYtbg9tc40sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AACCD6E67
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 12:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169702902872.20184.10861552702268591552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3f7434f5bd5a5a238538a21628cdac6cf07d56954ef3c03f154bf06c505934
Date: Wed, 11 Oct 2023 12:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697029028
