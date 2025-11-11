Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1362D6605
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762844994; cv=none; b=sp+/2WbBwyV2BiSUY34+qrRuEw6bpXQS75To/jcbNXwq2Xgq25pre5bkeLX8fdd+qtOEwF1nmWZWp2pwYc8kssw1qOreWDEQxlJmJW+wDIX/qOOAUiiVnhLzfuI1AZfyD2hGCr49LcEv+368EkOsgICaUH6KoN3ZBNSb9sbajE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762844994; c=relaxed/simple;
	bh=k1pdanHnDfFRz6V5K+br3Yuc6gCidV6D5nUfbKfeYQA=;
	h=To:Subject:From:Message-Id:Date; b=qqG9ZTImedZ+8irfMP4kNjiE/IadykLDDEQyZs42TwsVEPS2NfLlRPSlR6sQL9Gpo7xFdxg6oOF5CxreWcQqVVTFiBfd/dES+awzhWWeto0IorLR/s9jnPdyUJ1AGIESYG3VTtCIOtc8s8wQELG7N5Qp8ih4zaHnb3ItRljGIhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1M3RTUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1M3RTUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC88EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762844993;
	bh=k1pdanHnDfFRz6V5K+br3Yuc6gCidV6D5nUfbKfeYQA=;
	h=To:Subject:From:Date:From;
	b=C1M3RTURC3zFO2P2RRVHEt91LH0FZcJiKEFocsqy5a37trx08VErl2aOVmpNVqvnr
	 Oe+7SK+QnKl2Tg3n6gNW5gv3YybTYNTdMA7OLwUjheuQIxua0lxj6X5bxqAdyzCJtH
	 pMGpy+FUsS5k11do838P3kUHqHQVK1y7FW1rkFKsNvw0LVP14PweABTDGxwScLG1GI
	 UgdJLeEL/3htZ/D3nTA/BGbDy4R/gILWZ9+w66tZmsjDC5dWdOL64oiDBS0eTjcrx0
	 1LjsKEP9dSXUCdDuOdY7himTD2oTmWULaug9SVlYPCUFUaeJ3Hz78KlsiFwnEZAROW
	 4L7tYOuqiv3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7CDCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284499364.24227.4926008814354102646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359a91bcb6ce0575d200f2e57b924682c50997a152a2860c28157687bb65506c
Date: Tue, 11 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762844993
