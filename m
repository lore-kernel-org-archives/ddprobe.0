Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EAB175A6B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777686454; cv=none; b=YvqEV+On4zU0xC0xyxqnCCDwZ8axmpwnygfjilZkcjlo6TzYwEiLE2Ua7yvfIF3mvBBmbEbLhFFFPFJ8JjiGNFKn/9TZE1c810mwHg9dIASa0e40Ci2CFsYf9SlyHcvRUnkWXD+CvlvAkJRt0szAyJvGoK1RCQUbmR4DnT5lB7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777686454; c=relaxed/simple;
	bh=DyJ1/aX+5cgYRdA5Dn3Ig8jEZ+CzOoqO5tLKYUjQAzc=;
	h=To:Subject:From:Message-Id:Date; b=NlcbGXh66Tnw13eJlYBeegQAQSck71O7Y+gBAqNEMRDhybQTVfFzB1PoR2SYDM79U6/F02WcxoVsdkDQBUDfGsxdxYCVcnljSq+z4/cainLqD+pZ7xlgG3oYlIHbTZrisH+joe3b1aETx5Ln404vbLUv50v+s9CkV+RCCBDb16s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u84CH98a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u84CH98a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7BDC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777686453;
	bh=DyJ1/aX+5cgYRdA5Dn3Ig8jEZ+CzOoqO5tLKYUjQAzc=;
	h=To:Subject:From:Date:From;
	b=u84CH98aYZLtSgPhlL0fhUkUvjG0/KFH9ka6CoN16kU8hLfuCthVwHhEL9ueVic9N
	 CD+pdfeMnumoFKI1peI5GRFMyAxo9tc1TiIR2ULwgv/tIsttdS5pxNdbFzi3Hpgb3B
	 6GLxXD+F8dw79TvloE0MEMSON51ZaIL8w98osHPEhI+Md/RG9Ale4XghPzc4gqgjAK
	 aTmtK1Cvuuo63tJ4oWUnzLGGrgGXv+CIGfPWbmWpX3bH9bI65rrxjGXUp90ugUD1Bn
	 4BWVUdkiBpeWqj3lDcJ4m94Ywqu7YKgILd1qREG9uHGoak8Qfyd5xysR6A0iNje7dR
	 ZJg+dfPhFENDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F7CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768645368.16071.14134895310844063665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c881f0c16cc4c7ae52d96faa2e3f501caeedfcef5170ef93505fa4542d92bdba
Date: Sat, 02 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777686453
