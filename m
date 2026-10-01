Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AAD4C33D1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790894434; cv=none; b=Fa6Qw/BSZqyV5xcgpzfenTc+u252hFeY8sQSfTx6lJbIDctOuwph8b3UrEoa/HkCVygFHDS1ZJj92HbL3R+oILBIclCd1gmpzZd8x5b+X9qUVjf4xFiVWPqsdQ1eVtfTow2hTIiyGakqvtE4HUEngpNdBomb624WQ3ODVIxhLIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790894434; c=relaxed/simple;
	bh=BGvVB6dQJAswSvy6yqlNJisdHWIAxgwhSnxk8Z3sNfg=;
	h=To:Subject:From:Message-Id:Date; b=B7gkKLiD4HmQM+M8bD/RSq7RVNRLCQYKILefX+FWcTD9tnJ/OXmP8NCTocGegVhWhRQWgnI2GLtpbp9l9O70BcPdiQNDIhCNaLZfu0zZTg8zGrRunYbaq8+kD0B3Rb7NTTXtbXk9fGv3eqJsNJu9mWUSr9drlRMGqh1TxMutEB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3YhVgrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3YhVgrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F48C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790894433;
	bh=BGvVB6dQJAswSvy6yqlNJisdHWIAxgwhSnxk8Z3sNfg=;
	h=To:Subject:From:Date:From;
	b=h3YhVgrpkKGy/+rgpeO5EPg2Et8DXLUN+risIL2aVFD5FMlohsywO3jd0/ZzJmhKP
	 F6x/H7Caeog6CKYbOV3Cquosug1ujjOSB8ebJzWXr2C7rRqe7dh82hztgI2biWPh2E
	 pJ6mAehK8dFwSTnlbKx5MU+rYU9GOp/w/Qbqap+lAKgnHJa5QmKQltLoxlJ16viqvb
	 6EWICmN08bJu/MFVNiGWKIv7CYAw6Dy/q+EuiVo20aX/RDbCBWtNsX63qSGVT3/0jt
	 Kd20B6g+Aezksbv2ySNS5kvDq2T0fX5U15mYZqSSIHKAiqVSCh4VvtR67p8aO54yTQ
	 DxRH+ah/4/isw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BACA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089443369.10746.5975205533141182839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91707209635aa0fc3dbcbabbbfd839899f271e0b15220af44c6c062f4ca441ee
Date: Thu, 01 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790894433
