Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C78C3CDBD3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781330794; cv=none; b=EcregUhvBF866C/b0t74TdQRxBlt/yTZhXRNXsr+kYHsJUWTOwQ/5+TQF0Dbig4WiuavQRuU+NTFJCg7L60I2+xtIE8Q2emTgXn9L35CrxeYBPbX0eAvFjVJTkVaMCUnIjWBpZjKqjSuczp67HMMQCNAQBrLGymqOMC4dn+Xoks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781330794; c=relaxed/simple;
	bh=jsQPeTuaZUeM22SonhASmRh5zEnenvytGXUYPnfVSQ0=;
	h=To:Subject:From:Message-Id:Date; b=Nk0MVdH7dERWudlE+9Ay24DhnEV4ZPVvIihn8O8xoliT6/x+NXCVQEP7TEXINDblPhD7B5WK20HxSdmmOVL6L57C1KXlh3DlpVSSOjrtSXBWRk0ZT6qhDMcmNTv7pa6vBHyNkPLYroqKfQ1qT4SRlHBV9exxKXYARjd/JB9gQ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcoS+9Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcoS+9Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBA8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781330793;
	bh=jsQPeTuaZUeM22SonhASmRh5zEnenvytGXUYPnfVSQ0=;
	h=To:Subject:From:Date:From;
	b=YcoS+9SjkLiq6Rf4ZNTLVwnrrVxLBkdpB38w8u8ezgSv+B77//UxmTdRQGmsh9pXd
	 u+fdhER/gevDzmZ7b7TxiWthkMHsxk+Dd2EukwQ8UVjYthYHOLMsa2ywRHw5kXC8uX
	 SojiY4YEMB6VzmiS5GQwHryEKLWrPctMjZRSq94rrOkZbJFtS015nI0J968M6Y8Ird
	 7TEduMQ8EAZYV7ZM9zyc4P0+2FF2JSSVYCcBOuex9tFbUD4PmpM3qNF7bzJB5EU0WF
	 NEOlKKHgKnHOPo8VZUuypdWuoYw8NQinN7G9Z6jqveI+vhqhKvHi9Z0EbbOsQAot1f
	 L+S2XXpud44Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9D0CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133079368.14603.14180170809409599880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8e2df106e071770216cae2b25ef2aa9a5eebd1c3782d3329575b8dd4adb22d
Date: Sat, 13 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781330793
