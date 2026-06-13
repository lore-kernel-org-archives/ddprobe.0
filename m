Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F803A3E77
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781388394; cv=none; b=Ne81R3XT8M+VPH9QquAUYK/QXLchTQJ6kNxCj8a3x29PJSbCBIEy+4bvp6p8TXFKSoaIHykJi9Dv1gmIAc3s+I9tkjsTHjBqiDkupPkkNpUR3s2BWBob5cGnMwkNZCXmY4zRsMY/N1eapvKOBp3csPJRZDUzANBEIVSUTWuUPWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781388394; c=relaxed/simple;
	bh=wg3x7GRlIx6Vnj/RQv85jZImm3O5o7sI79i1hRww9x8=;
	h=To:Subject:From:Message-Id:Date; b=tTQR+fJIA9qXmlNQd8CdG3d1W3tbcu+KQ85SagELlToO43VaxKFC1vUtClV4Flpiazg6XtjZqHA2DRpTmWY1Ird/T85h6HMJkTQ3dzled2qnGcX6X4hPV1U0o6eN0/rIpf1orS9/V8kip7YIk+SK63bak7FdwuplFKHD2OfRDkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giaIMUY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giaIMUY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2221C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781388393;
	bh=wg3x7GRlIx6Vnj/RQv85jZImm3O5o7sI79i1hRww9x8=;
	h=To:Subject:From:Date:From;
	b=giaIMUY/mU4ZhkoWaZcdQlJFTQUnl6kUn4gGHGGxRBTEBdrcaJUfYKCTdwQf2Yp4T
	 QnBxdSbRbG1wRtOLFeXTxkp4KIeKq93ynH9Cb9NhhYK0nzXEFytEnWYfxzn6VnfgQr
	 URw/r7fbw1cZQPTVP42yeQQu+WvprPkYQw+959+zyxWtET0sqonHjEwsXdsOE/0Qp3
	 YjmCAaOayKiu4sK0XWMije7Rd2M0iA407900C1fXbVxrXoO+tVjlvSNv/ECgPyF4Cq
	 u28DmpyjzhrOCDoydx27ecbIphcCkjK5XsLJt/Fc7Pw3RbE6BRwjhbJBx5VX9ffuKT
	 Ls3sMqnnJevKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6795CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138839371.7542.18101613221384727598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893df6056239ede314f6b06f789010057b17a6ecb762428db06cb2037f18cc78
Date: Sat, 13 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781388393
