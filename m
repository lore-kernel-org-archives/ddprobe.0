Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED371624C5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776037054; cv=none; b=FWYYzxyNUP9UtdEY+xdPTL7cK41RAgfY9PGNcG+bG79N5Ed+l2zy5LhKVRql1j/RSvgWBnQw0YSP7aV6jf+JMtxQvawO+WMVQGFWp+hl7RQU3WosodV5TvnH5dEaRtwT4YyLBB4Fzx6uJ9U55V1GtTDLsHMaxMtvFMi02QN3sPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776037054; c=relaxed/simple;
	bh=6VBUQ+3jKPtncCSdbgHed1kXN/FBwkpApuldpKnTuLA=;
	h=To:Subject:From:Message-Id:Date; b=OIfcvaAnJi1RD9F6x80G9gNvLmRLwQKhUZdzrW0wJ5FWCqXWmPKiEddVcCZyIGkk7DSfnCccL+oJ+PnXFo79VE9lgTpmvGeUPNq8RkDPX92WFAXUcUYztOUuXLqDselxqJc3b/qn2368Xt5YndrSoG1YpVOKulSKHfPU+04XDb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCXBE0sm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCXBE0sm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D42C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776037053;
	bh=6VBUQ+3jKPtncCSdbgHed1kXN/FBwkpApuldpKnTuLA=;
	h=To:Subject:From:Date:From;
	b=eCXBE0smwtiLTCx6g+NAxLhCBQ0GZslw4yuZ5qXQNV/QLyFklzKOsZ6AsdVeU9Bwh
	 8KGlAfSLKVJSTpNZ2ihZD4kTyJsc4YuEGPxXJf6iHJwIzxLn3zr2CoqOcnD5GmTm4s
	 BtQQS9SnEKKiN0Fn+hn+N5yzyjT1MYg9oUCsoJIfYn+qDKeU7WWnyfHoC+G2NYswBJ
	 JWeGlmsJw7Od9+MXvWgglm/ZTN96dwApgQdqzz8xHV58g6Kv6Ocw4kpgrPpIVSqT2V
	 5CD+MEyNYIeG4SUkdrUeNtkmwl06PQNZ9tatwxDDcpoShdJgTDD5Jt2QOcFdAzfwP8
	 C+/bgGMcALI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF76DE93807
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603705368.17726.9016828394973698346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc8240345bd889bbcc0fed7e7fedb0bdbecce86e1700db56f92cb5117196c64
Date: Sun, 12 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776037053
