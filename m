Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4042F851
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775998654; cv=none; b=a5aUM1iFJ9Y/Ukj62vm+xiqeqlFl4kwn10QMhi7HquMmm9mT/l4u/f1+quscsOFy5DjB6fs0YsUk3QPvkcJrqcQvX+yq12WGP0irKp6nFPZ5QaItUQ0DB98Vsp83nlQdR1d9PQ+WK+kn6aTNPWSTK9o4+fvNjH6TqNjNTtWzR6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775998654; c=relaxed/simple;
	bh=hN4kfdLM2zCBnpxSfPwT9eJS+pwpKhUK1JcDVI2QEkM=;
	h=To:Subject:From:Message-Id:Date; b=eBLCdbVKwGnuJfmMamg3Ti/JtXJmxKFNSuikxvbe4vLpBKkJem4Dvpffne8djRSbEetSLDxg7dI9qUZRNe7Cqx1kjst4l3o4KVvf2uJnYFp2tGKQZWHPhIfhesPCBnLO9fqVUQuUVO31RyjwhtNxlDwSAcDK9CvM9rXeBNEEkEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfUxps4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfUxps4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BE2C2BCB1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775998653;
	bh=hN4kfdLM2zCBnpxSfPwT9eJS+pwpKhUK1JcDVI2QEkM=;
	h=To:Subject:From:Date:From;
	b=UfUxps4q1yV8kNoLldH1Bzk61k+m3dx/wBzQpCNHPA0vwb4qwYjUkVMCd9fxlS8WY
	 /Z/2vQ8n6IlMBOVaCtOtAIoCk41TEgLMrcwyG1950KH9pFgDsHhW+3az4ychb69d/g
	 aZed9wpsZNSXHSgpTYHeiLwwUoIFoxTPAiUYM16HsodIJRKP8FLOfA6vlDxEIetz0k
	 xeBTHuBV+3tYRMLM9bNnO9bvGfc8h19vFByuweehC2pTGPCu/WX8xlmBFw6h3jjOsX
	 zyUP31Fb5DQxoHcfocH7sJbSVPF50dewCpAhgni7Kx6tA3otAWl/OVl/Ft2oSN3ijp
	 ERadxthZTNDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C4FE937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599865368.21345.947054370142294624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c47c3c30c532301d0b017885b9bcb7f8b11c90b5e8df1aa5e044dd6a75b6d43
Date: Sun, 12 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775998653
