Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FC33D34A0
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782718114; cv=none; b=qlYDhD5nCUmJ9pzxCHOu7Yw7QKnwjw2e4oq3xMx7bbd82liQ4p2Vb/BqvrHHiy3Ar4J9ldVYt40c1au9NNri5rOpM9dQh1V0EiaTG12ilww78SuVFqYv8CnWAewtYxD+ViekzHyiiKD9AMvV/MWuJwZVyngnSPpotyRAuOBMT8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782718114; c=relaxed/simple;
	bh=lxzWM75gJHOccCqXnSiTEyCbPdV16MJcJBrO2Ao94Kw=;
	h=To:Subject:From:Message-Id:Date; b=L2Uk3CJ++Jj/+lcLiAwwVlLm0nP5+umr0pucYHgmTkH3UUuXg/8ckH01pQDNZglUqvTno5zRWpxycHwRLtyEcTBWXL8jOa3Wj5cNEVuVS/QPMjyZkPuO3KXPEja2RWIZDMTrcblLrwq1PL8KbSAEfndSsEpncKeNGb6dzfshS6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psxY7tDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psxY7tDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C245BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782718113;
	bh=lxzWM75gJHOccCqXnSiTEyCbPdV16MJcJBrO2Ao94Kw=;
	h=To:Subject:From:Date:From;
	b=psxY7tDXXnKt1geFGkDqPwpjRYH1OA66rxKOLjZOP1zex1HXY+HIcF0hapGHGeezg
	 Uhppwa8X7+oNWWsmHrrHFsNgVhYwkdW+Eg1w28mhTBD4kXOygwjS5Frm/5X/a2v/vg
	 BG6cDyixD/Jvi++N1mHUkrZ9ledJ9QfMSHP+HDWWIFw+fRKjTQOSNCnk5hrwFTkE+j
	 s/0uHrjGv/SVKKQ3owJOLjeDH4bEOda05gaT0wPQAyYB6Ph2LvbWiDcP6u0tNh2f2A
	 eWVXLA4hJzmgMiha3P3H1S+iGnqBYFIQk9WSJ6saw2Z3lXTUDYzhmcZITdivOBxOht
	 uLyROMOaSLjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97BEC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271811368.19051.14553163265732773170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4a317c34638c4252537c1168c96df3f5ac455505a0337467472d3521b49152
Date: Mon, 29 Jun 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782718113
