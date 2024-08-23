Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC432E644
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724402754; cv=none; b=mRpew5kEVtVqLoiSLVXSxcI1xVFDrxRSNyRbrOu18j1OphcpPjdwR9EMKyLoPLkXJI6IQ1SUdk/nsH7oceDkquws1NHrRrAUcyPBTKzouHWrEni+R5RhuHDBMQbR/+gDJZX/AkYJ3XpUvE2BSkxWxqupaKwv5vJtfVs2Idj2+/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724402754; c=relaxed/simple;
	bh=9o0/i/ngFx5Fc6VtNwsUwIGCqe/S+PXYWJAr2Rr/1JM=;
	h=To:Subject:From:Message-Id:Date; b=bhyhFAso7nkGdH9BTlUtgH1BHIM4g7ki145uGxu95KwSpyVGgD/d7tbebYOGWgv+1HILKcFrQaHPw4q2kO8UyEyfNF5GuxcyMgFEI1DGKHJFHLKaJORqNB/HqRTXP1pOlBZ6mQHo9MH0TpwU9WMyM2fVrOo+yS9NAVdfyd8QTLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoM0m/Ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoM0m/Ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25ABC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724402753;
	bh=9o0/i/ngFx5Fc6VtNwsUwIGCqe/S+PXYWJAr2Rr/1JM=;
	h=To:Subject:From:Date:From;
	b=OoM0m/UrrAvX6myAFamNgRQFKEBt6Sf7SOBqDCuDxcecS0kF08RgSUsub5uI8U8BC
	 JSkTdb/72goz0s0Ww0FnsfmmwjQ72yvjHT+XkOmWxLrc6NmI7tI7gDFFlWqhqrMXj1
	 zZ3+KtK0DceXU0+QE65/RjPev9vhC6sTuqfTNR0kcQHzgrmIy/ZNVGPP7I28OMND6z
	 UAk78ir9zQWy9dqZjlz0CrNWyugAUrHmTB0C+Yb2vUkfBMyd6TyMFRBzlv/bqCi6Sl
	 RAG3EQgVX3MYpf9WnJ6BQ/sxKVtE/Fz7T+11gnzenxKmSMCaWtQLB6fjSiu8MveTeX
	 Nb2ZudWtvV80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CFC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440275360.17124.1297978759849956433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfdc492f1156699dd1e5a7a71b2b36af7c957629c00042909c9eec4766dcd87
Date: Fri, 23 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724402753
