Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1183523C506
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131434; cv=none; b=UCafaymA0slnP2WtbJMS7BeFsvU48JU8I5FH5gA7tmpYiODcPj168x4jcEZ1rSn5Bc4qq/oDAG2QKEUv1uVkPNKrWKoRpducSxj8XughU+Pt8iE54lfFHqK6iDq+5dwPezJaU4QKH6HH8fpoPWNNu29mJyBGX2q9+6Xx5kXWFPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131434; c=relaxed/simple;
	bh=r6JwLItX5oF1VORbG/ZlNfqqsf3fO7AVPqyzSVs7Tlw=;
	h=To:Subject:From:Message-Id:Date; b=P2euDJbxho/f3Dn1XvNfEILxCbbfsWgc72v+cObaTep4oQWBjdd1Lmcn/CVGMhCcjdVJjgP+EQKMI4wgwxMmv7FGi7dK2mGw/dsktcubKvEoF7OqO+3oClhVMDAjq+uuaRGKSq0O+GwyjO12eYxkILF/pNEKewBt7n1f9OrcSE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HU7RTu0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HU7RTu0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0349C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766131433;
	bh=r6JwLItX5oF1VORbG/ZlNfqqsf3fO7AVPqyzSVs7Tlw=;
	h=To:Subject:From:Date:From;
	b=HU7RTu0F8Kgx3CnneqwkX5gCejB9f5x4xFFFZKnI1OmBwELDJGW9JWFJ46WTFZoXg
	 7HAE5V2TRdu/OTPt1FOB5JzLffacGZpAY48jljH8tuw3hQJ7kfqamCqkF3q+gIsX9S
	 kGsRI3WGYCIFeHxhuJIcQMP71fjKjODFktLHNNxdsdkZy3eLQLSxIM6jvE+sqTKwTq
	 zFD4CFtVA6F+34uT0Ems7G4twXwssM34ElF3IXAy2JbziJ1FjMIGVITPbXffORrwBe
	 iA8bf/VWmry9rQMZmuWE57iRMgOSPE7Ya9YJGDYogtkVlLsAixMm1UpN6qntDFcCB+
	 B2Dg/GnnPO1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ACD74960
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613143357.9330.8146359898634593944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64cb3438ace0298ddddc486bc2ee1dac8998ab8fcfef3eddf07cb91fea62a6b
Date: Fri, 19 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766131433
