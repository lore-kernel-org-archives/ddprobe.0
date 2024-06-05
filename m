Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426DA61FCC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717563983; cv=none; b=Bux9B8DrcTVffWGnd65Z/zIPmI1aBxcZ7x0flX/2qM2b5pUcF/pYm8megUJE9+TRy4daolZaDdKtV6JsZTj2y230m07H7GnlmbfyxyCqrx4PqXexXOd2zS/3Tme7+yUQiaZi+u1TpNZvn84twCGhhIpdZc3I50ZKoK3rXCAKQ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717563983; c=relaxed/simple;
	bh=myslGl34ux7NLrQXbtDyKBx1xdWUg6RuU9g6P7e36sA=;
	h=To:Subject:From:Message-Id:Date; b=g5sW7q4L+4QoNjTr4JdxY1A1Q+NF4OMKWKHkpei9kiCsbZc8+NpWoQMGu+7bL5NMHNQ1e1r0xSMBoGgpecgc793mKHiQVAIHo4F65OtULcicy0Q1VJ1iv5EOWoFGLzJUue+bW2Gf8RcCp6fJTetsnK/mcY5+rAAMJJT+cqfDGH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU7seE5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU7seE5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE57DC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717563982;
	bh=myslGl34ux7NLrQXbtDyKBx1xdWUg6RuU9g6P7e36sA=;
	h=To:Subject:From:Date:From;
	b=SU7seE5pFKABf7Hgr/upKECr3F72SBvrodI3gy/az0dVP8Klg2SoE5aDEZWmU+ZkA
	 IH5MSi3LlNz3bSFlSPcJNUvJIO48VeoyebJbROQyFgi+FUVbY+8v9lj6RGveHHHugy
	 slfi3cCimKRrmNZxHjJ2QRCWtyUHyC6TcQ6wAEHFPId5AHI0iRb28E6TRRLkkwZhPp
	 GZCNcTHkyiO3dBeUwbQY9141U6JBJbo1B2HMMN7XgXq/Z9Xn6tFACwbw0BOty8uuJ1
	 u2ORgC2p7G6hlxvRKVf7OwI32h63OgNgjVkO2Z5jln4LHAyLRaWWJU4GDlicsZfnTp
	 Q+t0drDacmO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB3CC27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756398276.8031.11098359691435285099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e458765b96531bc523b77eac96c923877a58852748a6df2c1c005032d1592347
Date: Wed, 05 Jun 2024 05:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717563982
