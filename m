Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD76C13B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770425634; cv=none; b=flxxbM/NpsTuIML13tdQ/Dd4sBPFFXvllg0u3xqqPUJwmCXtR/SpbDIia5+TbwMkm+a5F2t6nD5JxwvfLxW6F4tJGoRl2TwoZ7u/APBFHyvakLIac0AigslmCndz7D836gAueza+OjK8v+3f4EfFTWP0b2887OYV0EaPp+8lYZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770425634; c=relaxed/simple;
	bh=O5yiJxww5jACooGJTlPsgm99BFQW/pSS278sQZ7QVFY=;
	h=To:Subject:From:Message-Id:Date; b=iMJ9FEF4Xf29FVrN/sNbgtAv4+jJHr8SXMhGijcSlAWUE9CjriraCZr3M4NIb0zSxH3dVfwJOqtFrzPq102f7YF5jsK6mN6ulkovTAD+6XDmNKqW8YJjTZWOQF4WdEB1ETU0dbKGUoBgRyqrix211uVzwUdfZsJEU5Zsdj/frqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIepXCCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIepXCCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6534C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770425633;
	bh=O5yiJxww5jACooGJTlPsgm99BFQW/pSS278sQZ7QVFY=;
	h=To:Subject:From:Date:From;
	b=MIepXCCGi8GEQwCFTyq6JeSabVu5a241NdPYm2LqYqA1tbuszZQ45cflwQ+u/2Toi
	 QFChukFz49pc7liiNidPmZUjruXnySSiA1b594JSZyV78cxpFiV2h11eC5LC+BU40+
	 Wuq2TBHC+06+Z2kPuBvB/7qSjqXKfKvaJP7gbx2FEhQHSDFtivMYw4laOIwLrmwDdP
	 iwqAr4+/uS9M0xqInkPICxE8TqPtCF4x7ltBpopILMMLsMzcdTsni9TGPqm67eD+VO
	 EZ5HKc/eRhdNgXNDl4wrN+oLEaQjG/Cvwe2PJZkjl1GxJB5X48gEokYqsuF0DNuDTr
	 1BHXVe1T0fC0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2F1EE6B71
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042563359.30965.7842364083693056886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81afe5378e7c5d970f1e8e66b0df9104ecbc12ce49353b6f2e80bf59cdabff2e
Date: Sat, 07 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770425633
