Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D970433121D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771256093; cv=none; b=iZ9Xd2RZjNdpnROvdR0G2Y7kbUrnsNeONH9e5yFMbPTqO1jbPWVjxf6Wj1WkQ/nu2jTPyBBI6Ks8z8IegOg39Bla1K5rUClYJyNDymOoHHWj4Ps+dvNzeg8rrNCb+TGCTSHZG/Kx8PTAjy+jCta8myI98AiqhU3NCM6nTDdLgE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771256093; c=relaxed/simple;
	bh=2nSbivX/3fDJ48SOkk4JT8/Tqd5EgcetCVzW9BkwjmM=;
	h=To:Subject:From:Message-Id:Date; b=I8ynkrZPCDJ/SUGJTHdS6MmMfHV82vH17VX/kmYvDoHjcWVtyBG+2wRA6zNq1mqfzYelgXGLcmNDZX4+ZgMXGoZbXl1dB6I3/lHg2pGJ8tp8xk3KXt0KlsuqEfyaCK8uTG8WTVZiPaHXHE5+TSgxy3Nry9DPaFVg8ZtlJJeeWl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZz2xiir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZz2xiir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC95EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771256093;
	bh=2nSbivX/3fDJ48SOkk4JT8/Tqd5EgcetCVzW9BkwjmM=;
	h=To:Subject:From:Date:From;
	b=lZz2xiirOoT9AiRfM+or5kBOAmV5fehR6zl0b1yBrqQ4i5lJppmVXIyURkI50TKkz
	 CHx8anGsICL3FukWRTEFt1r/ZzYIMEB0ZYI1UKE/JU3FsZl4Kh8C6tXESc/xmcKzOY
	 Z72/mw3X0oiCjbaL0qMGxuwuxbt0BoffKFXHPr52Wz+kyrBKwprmLwcLx+MtqRO+sv
	 L1lGSPNObmUcx01mUZY6Y7ytmw19i0FMtv29VTrdRk5ioMjd19/BflLgInuJe9Gkm/
	 dkvHkuNlHRgXd4vTojQIJgUm38L3joUVuGRgYRtuzywEvd9Y1m6Fgwe0xNAfjt9UeN
	 sSJVi5Vh3oFgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98304E81A3B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125609361.29164.15118201277971855647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d88e64ac78a5c3f69338dacb80a4987087843474043a85ddd136f9fb05a5cc
Date: Mon, 16 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771256093
