Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1FD1114
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757669995; cv=none; b=WyfzUkFD6CqGyrBJnGiPwvDmz+FLMb3xbTxvtzjfZt2nGGZbU8YMhYPfRSR1onEsyoBkQiGZAn9i5l7TKTWRdEdCwjY6+KuPgOR5OjCc7erVldQVtL9ak5ywrSm/C1QOe1rEmm3EKl5TYtx9qv9+B01vKKeEkIdYCo6+427yEEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757669995; c=relaxed/simple;
	bh=FO4N1ZUM22uBL7TG30ccZpxpgH0XMTWqO4t79AH6imk=;
	h=To:Subject:From:Message-Id:Date; b=TpsvM2d5P/XhBFrYoE4S3R+JcPTNeNWWMi3ZxoohfsK3hnhKnqFrmvfR6FXq7tuvXSwSAEvmF/QqQdkoPPu73ilcJPVYmJRCUo++dLZ8HJc86mAOyd0Q0nUb/5/d5yG/N4+3wxo/FOQg6wCQwCTpanZdeclCmeZGLl4irtLLYAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWXAJK/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWXAJK/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F542C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757669993;
	bh=FO4N1ZUM22uBL7TG30ccZpxpgH0XMTWqO4t79AH6imk=;
	h=To:Subject:From:Date:From;
	b=VWXAJK/Uw/UuXOCm91VDNeo5tHlz3EUBHtye+hLAM61PKcrAEy6M2ogmCO7Bl7jII
	 yZv40xtSzioTuyiwGwuzTXm8U/phzl2fM/5GTNy4GpHf+NyaOt0TEDqrgdAY+eijmo
	 Q5dsb16hYeA/kg1HRoJfWrERvEY1pwemHuwIQw4hqOfI9VXMYnc17NPk5wVAuFQuEq
	 NOnbB6jHLYLFXO2cZFUFQJKfkmq8jEUVi+TlBPPgWr+/ZclEmrJZCzWzEzfIQbybs1
	 msJoi7FsGSukdD4gmazbIvbPgUgHbr2U9zM28DzXZITY/Wg6XlH4Q+pTAgNn4zadSS
	 irZlCXB7wn7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F863CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766999357.8962.3905770288445766487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346d39737ad4377e05412bca041adc115bcc981c5e3aa23bc74dd5723d8482b6
Date: Fri, 12 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757669993
