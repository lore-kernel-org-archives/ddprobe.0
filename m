Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F32C3806C5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772092494; cv=none; b=ptB905xLXLloGvDlv4KA3ID24UXdt+z1mcWzSVVghLN9+2GNACHfSFRyIlmSVmVsWA7mKMZWYn+1YV1UkGudQq6X5dRuSD1JCo5PJXmplNh7RuX3lMortRK3r/HtZ1sR3CeVmXh9yUozxZcJi/WHUdhZdiglkUVNnDQ3TKbDVtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772092494; c=relaxed/simple;
	bh=tPBJ4dzzNU4+GmGnHQPo1t6/G3cAgo2B5/5Prkb3kjA=;
	h=To:Subject:From:Message-Id:Date; b=eag/ufdGhT2VxuSTBrsDxKIGivp2ZvKhO2HwbRlT1W0txlBHCRd9xwwZKA9jUwfff/yVGeI/XlgaScO2K/xkrGxAStgWr7H7k0zVuZkDgV/VEB+pbG/WguxzA3fFZFv+dCxq5y8tSFnUtzi8bKruWmQIIdMyOyTZrwZHy0ImWAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ga5KfL5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ga5KfL5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA613C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772092493;
	bh=tPBJ4dzzNU4+GmGnHQPo1t6/G3cAgo2B5/5Prkb3kjA=;
	h=To:Subject:From:Date:From;
	b=ga5KfL5QngPLAE/6tQR9xyURRdiVtPbZ4vwdkB5dC5rrED11yrL7O4WCfWKnShsva
	 HF8SlL+9wjyaLQn4JM6nZhEPAhlw8lRutcTwY0gyry2SfyltdYIZhjxGPtTAjHCFHz
	 V4eKtc3c5tNpd+sxlwvtqWcnfJaN2T3yD/PtZdcvI9NTnIvs1WzNL2Jj6wpQcznryL
	 H8zgx+Zal6SQOrIz1mcHVeV2+xu+25JEX5pllZHyrrlBDGqvvqLKwivzWhN+fRQVht
	 k2mYJcPWxIOVoYpnyqopxcnAJHapXhWHDRGIgAQJ3yd4l+xAufvKdleuS33X6fJRJn
	 UBeubLhycBMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D73FC5903
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209249358.13102.4442287776436173425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d1326abcf750e79fd17d62b84adea0801a29f62c5a14ab048c843b0b006c83
Date: Thu, 26 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772092493
