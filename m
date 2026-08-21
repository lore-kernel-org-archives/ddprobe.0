Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660FD3FD129
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787340634; cv=none; b=mkZAXs/HL3oC5bF48JxFzDC6tSzyWPncCEkCn5U1Zvm3GsxVjuIvJQSOFA5y3Yf1YDlXE+951qs19W/L3KhPzuMjZ1+E6f7p8Z/CX80/dPlfz2ZOBHN+KFgjk7r+P06QLiWuMo/0WwDbfO8uETLpLaVGrJhFsNvhU680TDTrWRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787340634; c=relaxed/simple;
	bh=XzK8hAay5jgPpL4H02VgicIO3haAd9lnVmSqktfZE7o=;
	h=To:Subject:From:Message-Id:Date; b=CkB+TUzniX+4QtxkxkcPDFIE5NZUGd6x6ligdh05sYsHg0XuzO79oFHUqND34Tso4I86z+gR/tBzKwub0AC+GqpP3NdClJkbh639O2pNgGuC19KF6UQSpRmqr2V6TyrXtkjNMpYgXHqkk1kPo9WLkRSX1fnfxvKH5NwQwe//FuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/H21Jb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/H21Jb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A95C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787340633;
	bh=XzK8hAay5jgPpL4H02VgicIO3haAd9lnVmSqktfZE7o=;
	h=To:Subject:From:Date:From;
	b=W/H21Jb+ecl6Rh+LN8rcHfBwB/27+YSB/bTCONWaDAUmwJVG4ccNcu4HioyAop3mP
	 xO38RVdxVCCsyLq+rfHQJb1IsZUdzBWvEGZphXR171jMLvAq8rXTfjIq/oyqrzudo6
	 86QmzdETg66xUIqvmL8HYnKlvvIrKtvRGJVxxM+C8bjnlLyefe6crXnHVGFarfVxON
	 5Wp9W0mAfe8Rk60shIe4DyN/hygyP4ciNnuZ6B29eCKPxrHkyPaEMM/mmp9atwzHEv
	 CQNJUm6UJJ4THeQtAk8IGzYsSmve3QLQlVPu+wplcgKJRSUI5Z+ZbWqxSIsAYTFCJN
	 dnnjoEdFZFXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC5EC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734063370.6784.4094170050272946164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd62f67e56ccda7b1be7d270206db12ae39fc048b7b19c10263a0a81caf08dc9
Date: Fri, 21 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787340633
