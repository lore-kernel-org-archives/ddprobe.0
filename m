Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF2C1F540C
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740054534; cv=none; b=B96xWqDbk0Asg+khe2S3sIeoNGfUkj0QQQL7cbzw+ZtD4gKadn0u6ilk+TmPB4aYfQpWVVkgpAUJp1xGHfnvMxHMGajqdPe05pTx9IiLRZtSJubjFBR6axY/6sBoAZeu1U2nL6eOgWBfeFimvU05F0wxa/xoq3Rm8psl4VnAfKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740054534; c=relaxed/simple;
	bh=bqKQVTrB5ye9Tte5M4wFR4m9oiMxO3l4XjMUHEXS5cI=;
	h=To:Subject:From:Message-Id:Date; b=uvM1IOqOlqStGXTqzbgPWJ/9AXLKZdefg0/mESqVz0bypGPqvsNLt5QuTM9oFQCO77f5ZlDl4aaM06dI8EmVO04/Jr5bCzPvOLtMs/Y6ya1XFBNwvqiaiMv+Sa+Er77miG1Lb5SyyQ+1AoKXtzF5pU2AWHm5UESxHPfq1HMbrI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDvdKeIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDvdKeIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44FBC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740054533;
	bh=bqKQVTrB5ye9Tte5M4wFR4m9oiMxO3l4XjMUHEXS5cI=;
	h=To:Subject:From:Date:From;
	b=uDvdKeIYQmP4U6GSGnSgp/JY3a5x7DgUmxfYeGFo71PBCYdWEFxsJm/CKO72q4VHF
	 4wApNrjOlrB6okbHA1tItV3Gltu6AUGnxj56FfViolgGuyF4Xf4obEsjfCQ/d4/s6O
	 kef9bHr1ZrbWar7dMqJnPIKf5wZfz+/Iy381cIza0uqaYGuahau0TtQS+GJy8YwPsm
	 2PXteLNqPA21CXdIyKp2tWmR/x5Zpcuz2pB8LJIggI44AM/YxyBll7jPmWK/Kham1+
	 o1iA6ieEYa4lUhkKqC/PB9tEU3jSzqCVKdsZVqAb5T+rgx5Q+zkg69Yk45lSYHGr/L
	 eECY1uGYgVJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E76C021B2
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174005453364.17927.4863475105471733767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad049a43fdeaea48522ba1a902c09504044a9068edd2dd28f3a866bd829cc814
Date: Thu, 20 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740054533
