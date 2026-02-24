Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E2718DB35
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771907694; cv=none; b=Q3ucdjl+iKT+NFWMdtecbsLQPO/Kpjc/DA4qG4mgh635HcurPv2BycOrpkt9fTWr8IwrnaE8RQzBRSpmVXLr1NwNiubyt5u0IUG1eUPUkbKXQ0KNwwlklR1stZYPA3ThcNm4CjWfM90a8z5pGgCO5/TLUrQn7tBYVTp4znvMv64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771907694; c=relaxed/simple;
	bh=utLGHrDVXkzcjmAMLBRI/RgFXcuP7YOhyAHKz/PNRAE=;
	h=To:Subject:From:Message-Id:Date; b=UYIsMjqavmTttItAmGy2Y/CK0eGG8WSeCL3cTLxTp4zUaJvHbO63sopgvTskXQdze1tZymDIlsI6XX0X5thLLkYGL4BEOuW0WiHE/+jFhthofkiy0gYMA4mjtcUfCfMAjAUdoArlrjZ0TZu60U/xv0465D7kFUr8ji+rLnw7+mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opkVLxGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opkVLxGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB9DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771907693;
	bh=utLGHrDVXkzcjmAMLBRI/RgFXcuP7YOhyAHKz/PNRAE=;
	h=To:Subject:From:Date:From;
	b=opkVLxGY2+Aiz3q/AQSU7QsUYyTeW4WBwaF7VfQ2ublzN+XR5M7Orqbay8b9nzY4Z
	 8wgLdx7RzDi9kFMadpB5MKcodkxO2oqKJS6S06NfsjTMnvZm/hNnddSNsn9N0Ku1ac
	 4ZoFAz2mYfIhSWxi0qtRZKTx16R2xHLslKUjvfeaJO4aB40XUVMyNRbKw8ahqIQXJx
	 ILOAhleFe4tMqbm1lDPU6e51QDxerlCeS9nWmMwbl1t4S8vJpvXnu+sH5L5PilCsdS
	 YM6RsYaZBtQQPEWiZT4xoLEK2j7tpqEV2gnN0ShU8Vwv//EdchJbfCqdOo4q12Ki3o
	 D5KqeO/pJM70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983B0EFB7EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190769360.2712.6000133144512861687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b059a1d855e830fc51552f55da409deb99dff5e4c54ddb591dbdf568debf03c3
Date: Tue, 24 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771907693
