Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C0413AA27
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742053794; cv=none; b=NZLiEK98+0dTfurR1b1yGgLa6wk8R40mEnrhabCpQBk4b5KpyGxgw1Ckti7/8fdK/LqRWryZuPmJzbxF7aX1WYR1jPCK14kTT+fqGhv/sVimrdpti69fjzYDp6bUjcn0dlN6E4D4WWV71+ZBOHg4bblmajg6y5Zz5Aj2tefa3hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742053794; c=relaxed/simple;
	bh=fdf3hHOWcAzkEKmSUNzyTP6F8aVUtGGm55zJp4ThJek=;
	h=To:Subject:From:Message-Id:Date; b=F+WbH4M3sQMSLsbOR/+CGLgqAnrFO214u8C9U19Q3FM+mJ1Uj0dh+tKIkFb9QI4m7Nb1u+dPUVIjwROO1xQqkXxTP8HV4LT4E3mUAadELHm+pI33EuRR5ObZMfh3qSppQMdaHXe/Df3JT2zxEwGp2LSFu/yOt2DKgiQLx67yi2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJqMdPsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJqMdPsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95B6C4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742053793;
	bh=fdf3hHOWcAzkEKmSUNzyTP6F8aVUtGGm55zJp4ThJek=;
	h=To:Subject:From:Date:From;
	b=rJqMdPsBZySxktL2i6uTdkEJCF8NuJmq8SRPWYu8c0/z7M/1lSJpPU4wPP0g/BHzl
	 nm4+X9X+HQ2hA5TIj5CiyLdUaIcUC9JnEdLs1yrvuw6+NH/8J7IAczqvQLCOVrBQDH
	 Cy8DuGxBwJBuEjdkevr+yq2BUGAYCe0YgohZN/Ivi13ILg0KHF25X7JbI8pK4BsWwU
	 gDt0d5xWHAeJhDWLewP/9Ki71I1A3HXtpgz27ZTut7QwnlGPZHV3M1ayN61Pozf3gP
	 TOQjN0ejZ66EWeRD8TrFBc/66mXFBrsQio+pCRCVy+JIjOH7DTVgPpfxtZ6qSnsFEH
	 dUVcVCqw0/tEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FE8C28B30
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205379366.20570.16371855742108410303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ad153df5effc0581d3f584771b2bb270f37c188bccbf3d5b700c5974c13996
Date: Sat, 15 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742053793
