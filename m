Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED874C9B
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714802543; cv=none; b=Yk4P3qP9CB3LVjwYTv+g4gHdduc7et+0ynBW/KgRZDKwPGNWnURC2MKQN4/HMam6sDNfSSti16en4vHIdUKGF1DYX2viPN+fCNBqtelbkOtM77fCM1ndMmDTnh3IuMJ9K1pm1V7OqcCA3rZDqhteES8SfqOw6+dVUnzrM5qV9cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714802543; c=relaxed/simple;
	bh=jRS0OvysEJlauAGGH8KOwJnHt2NyaX22osoRXsZGqyM=;
	h=To:Subject:From:Message-Id:Date; b=HKFNZK03N0Tm/6OtoXNjZJQL15A7i4KgL5jhxUpTov/jWbgbO67o1V59kxV56Jp4t/fvWJniOU9MaAReSwGLBrgrn7lgAU+WKLSBEy5XKAsHKO+NG62bGDGyemJ28J0qFihvtx7zEt3vDd/Mr3rNkTy9Dh1YNkxGbg4Inn7u/oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE/D7ErM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE/D7ErM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E167DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714802542;
	bh=jRS0OvysEJlauAGGH8KOwJnHt2NyaX22osoRXsZGqyM=;
	h=To:Subject:From:Date:From;
	b=XE/D7ErMj8LBBFA2y9NE6ec2f1KvUnbd30Ig6+cP8pXaRCs3HrU2qCFgvCBgN6kK5
	 9pCDi/Qhqhl9L+hFnAkUENKuYR6ifQPjjqRfzX5+5T2dg0fXtzmYKX+15ierysEyka
	 b1yApe8KCRSbF6E1wXEWNJi7ijEZck1yl5aZBy6tysPYOfOBKFPhDPB0tTjtIM6s9X
	 p/gYmpOoK1IRe+M1RNOfx+6LjPVB+lHrIFu6L9O65/KcRWNAivmdh9mZqTIywIpy+F
	 VsmGkFyGNyh0alCQ97GJUgJpoKEYQ0Jsd2W/6TYgLKqSt7IfFNn5CVpzruAYqbmpt8
	 W8voMf+lPPKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B62C25B5F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480254280.4312.15652127607402038552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e2f6b9d3324edd132874d44ee80e69441b2485bbab8b3bef18e60cd66f72c3
Date: Sat, 04 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714802542
