Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1FA261370
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742843394; cv=none; b=ugLtVXEFbcCu2RFn8rrSOIrLAPsIH2YmMupgP07Up+xW9uD5cP6r5uXuZBf1A5ISE+aUhGTGaY4HUjgfaiqzs9grtYs/S9U8TLxjlPMx4qzH6lpiIFCa8DVTze6vdx24qDXs1gYD31bgXzuGxVPAjyabPExrWfV4QodhKasm/rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742843394; c=relaxed/simple;
	bh=iKfDPvTwZm3cE5gCAhok2/7labvVOGITXJYZgo/Rv5w=;
	h=To:Subject:From:Message-Id:Date; b=Bsvc0WbB9ik3raO3wya/imSpmXMoNxTGrB+m2nPMK0BPKP3XkrWb/SxunVwWrRDOPvG+DWAJ6aGFxClSpIgmO6QWy3iexFR9jyHr3D9+CwZuwJG6a/FdhET1X+kb2t+FHM/eOq8cIVhgn/DojC+l8PK5k3Gtz447hFlIzJ7R/wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRDm0sdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRDm0sdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6670C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742843393;
	bh=iKfDPvTwZm3cE5gCAhok2/7labvVOGITXJYZgo/Rv5w=;
	h=To:Subject:From:Date:From;
	b=VRDm0sdLbAPJHG74w/cC4jVRzL+ubUsVa+M133/+U1dJN+Paf2C2s1J5BOLe+l9cO
	 s3U85+vnHFo42G+35GDQS1a05+7Y3MWYyuz/Vsw19g1q2fXjLk4fIwBdc9US7fAnOc
	 fN6zeTFwEqxiPWfIO2nLAcxNdnX74vFnTn0ESVnmdLXxcVDfOMDCR28+kOS1biKOwY
	 rNRhF4SoX8J1wFwKM3RKji09nZFiVAeP4LGK/TfiMGx9AYecnGl6m9GF3jXapkCUn8
	 1HAwgD8LcSo9t/d0GUktglSoHKp6lQW0dBYZYcfU6ZyiIkooQQsH94KyzkptWbL6oE
	 u2DxOSTUhYQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCBC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284339358.31592.2509766921997427302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a4f71a93a4b9a7a105e071ceb83ad34ddd4e37c52ead2dff46a1ec98564c14
Date: Mon, 24 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742843393
