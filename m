Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7829F1991B0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717695443; cv=none; b=fqJLtVPgoc56pVuLKm922pXZAaWGm3cfe8sFxdum5fyGzyMu0hQPcEq6IEQaogyabp2pDRkWMzuKk4W3dWg8/Hv8ZTc+Hfciz2oYYZJlslt79XXWQT0cc8iSHHGfP5NIkfhQVTED3zzdmWEHkPpvPImt3ruFfLjojT0iQPV0vxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717695443; c=relaxed/simple;
	bh=dQ2Pe/vlgYrCWInHcapSFpxLHCQRWpux3MUk9zG2Mh4=;
	h=To:Subject:From:Message-Id:Date; b=fAS6KysxNRDHF3TG5DRLgHKEOJoWqRlZ15xZnKN3Vtx/m0KFIK6+HsfpdlfuGOpjDxITiI6YKVwFO407t/GVzCTa/S+EOAH4CXaWYqXS2eMY3grF7DL9/T+TyaVf5gs4cZP4SFgVtoc5mNCXiL8OUe2vyx6MU/nKWLORQhAsLwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeFWnTNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeFWnTNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03225C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717695443;
	bh=dQ2Pe/vlgYrCWInHcapSFpxLHCQRWpux3MUk9zG2Mh4=;
	h=To:Subject:From:Date:From;
	b=CeFWnTNWIG70Ht/VIBL68Ua+mwbpFXD5aok8hH05atDT7YqIXHICTmi1cTAAi0lzb
	 tuD7IFwejFmdYwC8HkWEHkrQFcf/nkUTzUhOwrI9TOtCytkBBcdx5DNkY2USPdA5lS
	 XE9tRs1WTYJXVT7+fLS8VDN2w+w5UOIz2t53IrB7AgaPNtgTebyCuRBgCdPtOwKBx6
	 dMSPyZ848eYWr/lU1Dc0gzJ6qIki7pvDJPANStUq+ZZBk0RvYBPx4ftMvRjsZCqWyO
	 GCqMn5agaJovUEyNFJDaUFD0nfK4M8gP1v/VCLufm8JLYK9m83HjnMnPDLTYWyBfWx
	 rvq5qEVruZ9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD88EC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769544280.8361.4594243263176370164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf70ca63d5518e85bd29fefc9be3c29ea35f4baff24ce0877f7ee17732d2d56
Date: Thu, 06 Jun 2024 17:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717695442
