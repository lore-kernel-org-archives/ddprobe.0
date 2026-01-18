Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09472224FA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768715034; cv=none; b=LTlSJYpJEHOHkyH9AucOoGmZlnS4BCMTojZxlSE8qvifRFy4EwJ10xBYDBNByED6Ubs9cqX6I7U60QJicKaBR+lgzMS/PdT/Y7uZCPmAzHdlP2L78bVYtUeExcxtcMWYBde3lBvilux16WZWrCQj1KTIeDYWYUbmkbww7i0yuRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768715034; c=relaxed/simple;
	bh=l3X80KbOSxYRbuzNb5kQ8TdgHGOmOa2jdNj4cQd6l+Q=;
	h=To:Subject:From:Message-Id:Date; b=iNfJIeZ5Ry8NeY+dkXiPhJv0upNLrTZnQZIwGsZsqWo5cD7WQNRwC9+2Rcw2phk8d2R77d8Sic303Iw2okCcbOc0og7kyQz9Nv1y3X+Cw8qkoEMMMmYvKe7XN2wk5k1ogXeKkmpFellxwr+uPNgcdK8i8JoyK0W8zxKu8cLyLlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP12uB+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP12uB+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DE3C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768715033;
	bh=l3X80KbOSxYRbuzNb5kQ8TdgHGOmOa2jdNj4cQd6l+Q=;
	h=To:Subject:From:Date:From;
	b=hP12uB+c4vBBlSk0/ikvy8h0pirmIszeT3aIAnM0UYfcXMmElkPlHpUuQtCTl4vcx
	 Ta/PrX7t6o0cdvKa8QUrrGnHZre7fxHLAFxHB3UpAFsIp3mGaaDy7Zcpoe+DA9ojQb
	 lFEyP/OECqERFu1oaQQ1kKbJAc6zNeq8PnIssyYO9aM1J3QuqvFOF6KgjH0gyaSkuZ
	 WbzsXerLkRW6BQEziSa6mjURAHFez/Jwlb5j3ivb9sC6iGigb3IyXD8THlb1zIc2CD
	 QBiioRe9+PfdK2GHLvxDN8WDYQG1Et97OeRa9mcN0gNmRLJOMXIaZz8WmmbbwEBdvh
	 6iQihweboM6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E54D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871503357.4963.15429867899011933007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b82e178956f503f050b5bfdedae00cc91634adc4c2977a07106f5becfe6c651
Date: Sun, 18 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768715033
