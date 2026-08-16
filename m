Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E3530C637
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786906234; cv=none; b=kDQ1G4H+2E7BuFuXKsYYKIDMb35oi+qXLaVImLciCQZ1F4xMtGR4mRDj+kVpQ8+MfnltCYnEIQo2msdOKw0HMRM5/UW7mzpUBC7ooqMtFMJwCgAL+V1QASfSEQp8EU8rh0pASpoiUUGUQd97ZxJmwRXNfSmLISk2AA/cvdy3yIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786906234; c=relaxed/simple;
	bh=38VY2o36AYN/dGXLWfZ3FNlnmIWDRK1d9CViW3FoDKQ=;
	h=To:Subject:From:Message-Id:Date; b=sEE6aWHdbsvJWL2zRca91Vy3mJgs/q59uIpDLAFAM7Ep8Ee8SmFUqs5bJFUHWCx6wNCa634nNUqLEh2PO9qJG5SIWAUru0NXurNzoZxIxDbDZ+p6E4BSHcTSLUTfAnpqK+cNmwDaf4bCbB2YjC0odcrJcqmsw5BiWwXq/vOoVgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+9JiSmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+9JiSmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F1DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786906233;
	bh=38VY2o36AYN/dGXLWfZ3FNlnmIWDRK1d9CViW3FoDKQ=;
	h=To:Subject:From:Date:From;
	b=f+9JiSmIjPBCxY3T2C9RCoUqQRb1Xbf8gTHrCacAGnSAnKFCrw5HoTZqLezQRCK2x
	 k/tpWhIfRhwBs9UCeVB71fTLS2x3yKTRU7kwot0QnhuXwUrKGv0il2fFwhpcMPrWgS
	 w4hwtNzLH3THLocAQFvH+Hyyk2FTxERN7ngUdqq5QwLOWjRwwQ82VfhSqKLQxOH0rX
	 hnctu1e2YCfgGV6secr8QCSMGzTr4lbIAQdczk5nGUIZ6Qta9VzSL7zh7mfHpAt89X
	 3C6qd8nsKI5OPLULu4Dop3L5sVWup6hSow4JGpoDNL3IiHMoDocX0koGNXiEEkzH7r
	 WaNF7JK+8vIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD537C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690623368.21895.13929052569814558559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d541ef8f5bfbcf1eb96ed7ae79a1d4bae8f1613c4ad5b76231a388901f31033
Date: Sun, 16 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786906233
