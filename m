Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6696A1F30BB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785283834; cv=none; b=BqM1OwR1mPh+fjna3aJR1OvcJFb+M3RklkA/QZEStE/YyYieYiCYY4LUqAmJzhoMld2RCvTrX6ub1uksbXo2HzjXiW1b4yq6GbVx/9yHl0Xr4drBSeEXwOvRNvXsMp+hySdIMMEd8JnQn1Vv9sPZJSLX+P/Ton30AUKgVmra9Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785283834; c=relaxed/simple;
	bh=BY+PF5kzJnv2H6BjIVX7DhiYmIau86MbMQTQtLw5t2o=;
	h=To:Subject:From:Message-Id:Date; b=TyRPFI9o6gdkvB68K7jSTR2ZHFzDYhiuUI5RvIQ2VTfhUdqP6qr3RKyY8JOdXCXwNyPsyJRTSPtN47MrluhHERIyUTrKy9OcT4N8xmpskVyKijpxlgN6NsfWQKfZ/Ae3skIYjtrDiCTKnfxdOmkFmMvY4snbq7T7qs3t4p1nvMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxukYK8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxukYK8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E22C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785283833;
	bh=BY+PF5kzJnv2H6BjIVX7DhiYmIau86MbMQTQtLw5t2o=;
	h=To:Subject:From:Date:From;
	b=dxukYK8fR9RaLRx7051Od8gD380pomn9vwKjLg9Uc7apYVl3ZKk+bn6sRY/Z6V3PR
	 D1ZhHFokQkA0vi08BohwbVkGJjgDP40cIR705258hFlip4AGb4ETUzL8YIwcl7HUY2
	 wTHBXYgHrRCLVqlLB83ruT1yU4/m4YUQ54/BcdW5aegUoWtyKLRu/m0gWqu06/32g4
	 W4hdrSsXNFYKYxPDp1eHymzD+/1VwHsz5AMmg0E2WosMjP2WE2AFT2ezeWREN4IKLR
	 P7Z35yRvhTNy73FycSRDzYYvAmYEd9mTZwlE8hmlBolme8eQyVOBsTeyUqZPGzdx/J
	 E6BDjOGPT5fWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99BDC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528383373.6331.547350396558012899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8728cfdea96fd932366f2093eb2390acd01821a395985fa9546cafe185f192
Date: Wed, 29 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785283833
