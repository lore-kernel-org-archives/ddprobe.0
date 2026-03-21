Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FAD1E4AF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774109694; cv=none; b=Kp0/7nIZeQMHO3vT3cJIhFzHa/rw+sA8bju/XEQUNLQKbCb1STQ5zIOoucXc0Si5q14P4y2C0mG+/UGM7Dcf1rdN0SWTs1SX3PokOq5N4nA6zVMRN8tbBZGWTzddqQYDURT7ifIypdfUqzbrl6ZcQo+Giio06pCVJgx69gFVux0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774109694; c=relaxed/simple;
	bh=glIQ/ENtU275odrn6de/8/kP+K//KAX96ondlYebxcU=;
	h=To:Subject:From:Message-Id:Date; b=XwhbY+flMLt+q5ylDgP2BGLA3nxfDHP1wUokL1lzjWL1jmL0DnZWaKCsWKvo4e9VmZ4nizwkN1y135y5xQYsNZthopjADaq+Ubw35mygVSOp+IqFnNvLwHOUT3dVIIW/b5PmOIZR2rLMMGAIXAe7seDCjMp4pVGOL7s5tglv3no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOVRmg7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOVRmg7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4B9C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774109693;
	bh=glIQ/ENtU275odrn6de/8/kP+K//KAX96ondlYebxcU=;
	h=To:Subject:From:Date:From;
	b=LOVRmg7pBD9qkPkpRVONBMPPGSc4sLY/2PN1qEYl2Rs1tQ3fq2glIdHDkLT5BSIaw
	 6LoXGihRx0/8k1sQHFiKTBYDFwh+VhCx3Di2WdF28k2mRGoQz8QnyOSRtzbDU+SE3I
	 4Fn2hBkZpj3jF/QRXslPDTPAYUltYxsvXvKQkj0mh2jyyr8ejYpArkAkyU/x4FoCae
	 pMEHM+N80IvH+WUItf+ydq9lLk2RnPPaHRQjI8BMgYFy0UzzgKSneGTpKYPQ+TRv0T
	 shHyBFSr+qfhJ3cZTlA51XCxwd0CeNzrn0IclW9wuDGcE8lDL/wvQ2PnSBgJ0WGsp/
	 w9b4zW7edpaaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3511094486
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410969357.26961.9982419584299478170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144dd80f175fd89461f520fc62caa7aff6ffe878166024ec51918371fdbe407e
Date: Sat, 21 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774109693
