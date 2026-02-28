Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A20C392811
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772282694; cv=none; b=eOC/6z2I96fmjJHuhIGXTeBFQC6eNG/vGMBzjHWkPhkxmHGAcyODDDoTBPJ8+hpWZ1EAHGg/a/3nLlBFUYwcHNHxbcOO8vGVfEoAgSFQqOioYhuxdhMI8EDJ3GHuUB06+1kWpylY8cQW0Kt3kjepky/oB2nhmZrrPMWXhgy7K8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772282694; c=relaxed/simple;
	bh=oS1nAhBp6o3i5QRRORP4RhD5o/G/z1nleAVImOGc/7I=;
	h=To:Subject:From:Message-Id:Date; b=Qw/q1QA84UJHlOk+a/kVe+ikdKi7d7QvtfgBoOITcICpFn2Wt3CbdW+g2x5gF1S/+c1M+Ilhwod73fNBpD0g+7SNxcCM0KtbD4MRbnfmkZMegdUujfxYG8fUg42BgjnxVMzPEz1cIqXwqhB/W2z4tp7pOTGM8dlBCWofky3D1zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eufbRfkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eufbRfkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A103FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772282693;
	bh=oS1nAhBp6o3i5QRRORP4RhD5o/G/z1nleAVImOGc/7I=;
	h=To:Subject:From:Date:From;
	b=eufbRfkM/ANGBK7JXunlmbnSl5zJgSOoIkk8YREk+RznCikmNh1gCnawY5CH0lEXm
	 ngoGVZHuAyfpj5XkTQxX+SjVSSAssBXFaI77XjiPZbUlx/7mSQ10gZeiYtrYQq4y58
	 s4ykKT+911AXTokZEdv6eKeWWzgN316ol3BfbAq3TTIkWvWX8yr5TD6DlR6ttkT2LA
	 WG9KIJo2oK1g6dA1RYJ2DDX05TCOWVfpBV0Y9RwgDYEKjJqU9uBc3KR4SIbFGPYP6J
	 8JrPyDaDJEBc4z5F3kYGAkvzG74YeHIA/ey6IA7fynMsRqa529SdY0glinhXR5dlJ2
	 dZdtbs1tzdSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E0FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228269357.19254.17660875845617694128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90c4755f161509de3f898fcd227bea543aee0a340b3827b9e8efe8a8d3b17f7
Date: Sat, 28 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772282693
