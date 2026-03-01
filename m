Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA551C549F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772348094; cv=none; b=SQKCit45FWGqnBuzi7m0CcImBmrAZ1hn+rI3Jtx/EHHNLP4sA8aykYGehjvag5+imzTCZWkwr7rFs30AisNx4FadFi6qpa+1C7IldCKpS7Alvm84VjRntF5t8UD6yzyvX1mAv2kbLtpDoJEvVICRT4ZDibm1DfDOCDkQJaLWUUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772348094; c=relaxed/simple;
	bh=tQJ6a780s1CtXT2/r/Hbz3HkDr+T4n2zCSlHZ7fVrXg=;
	h=To:Subject:From:Message-Id:Date; b=XNMtrnyjsn/tRwSNh3fTorV5liEIOHPN89LqUrVb3l9MYeYE1Mzz6Kt/yHmRtEJphLOjggaRztwY7AplaSYlhdCRBTXC/yfjwR2XN5j5npBYiEIsnVAoV8qgaPMW6HqY63YD5zfLCc8uv9Gcx940qUYMaExB45lbu+UCw8MNKeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxvJlIhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxvJlIhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1777C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772348093;
	bh=tQJ6a780s1CtXT2/r/Hbz3HkDr+T4n2zCSlHZ7fVrXg=;
	h=To:Subject:From:Date:From;
	b=MxvJlIhRqM0mZ0N9aFTKYugACc+4HLSqsl76AdK9Vh3f77HZp25mZNziy4jptmA8Y
	 DE+ZEMcjN6n9QGWcmuUQ5F9m52rad/xvBqSlT8DIf30ZFNW4Ywyx9SdszwRZX5ALeK
	 TH1/CFP2cAx0L4uhTjy96ivQ/a+vNI1zenYfuIa5QbFXeXkbdMiGTbcbkSHvzR5yTX
	 hZT0q4/4ukWJm66jFyjzLHVqonCwRXFCUmhORZAUuq5TTTzl+HccjU+zUeCwlK8Rr8
	 UmGDcmkOttmbIx8HB9LdtC9U7ZU22e95Bv/3nmY3bZyTpLuBJE9YvgmGr0lk4l0pYv
	 DfwbqpU0b2YyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9103AFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234809358.25384.4610206541158508395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f63963be2cf6799920b9f783fad899242b216de57e0380c01651a4e966e693
Date: Sun, 01 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772348093
