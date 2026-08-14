Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4816F346A14
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786740034; cv=none; b=CJIqWz9fou3n22sVbaisysMpHfcj6X9gNBaTa1343KWKPN7DFMKwHWTuHaKs3EJV7HGXrSvCCRjug4pAEggK3T94B+5ec99ofBmVHkXfpogUdpntSsqS6pyG4aA8QFyMcADIYNYREpfn7i4RcKyeZlxW6Ap0QAW87qqDcsfVsWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786740034; c=relaxed/simple;
	bh=bdVE1UqBYU8PwyoTWp9Zgs4aUlCevpQU+oaiUoN61lc=;
	h=To:Subject:From:Message-Id:Date; b=HsAkoa3bTjwCRouKL1SfyXHVGupfNYfwulSTEWyjpNAXl9/ng1Mp0KSv8ftRxoRNc5h8Kxr6ZXQQWd/jbtLZxacAPIIWZWixcnM0ynlUG7NKQ4HKAObYX63cvOlDZwYJIhzjiy92i1Xl+iX3x/jJ8qf28+lBRm/H6pdCfaQ+yOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jySzUuUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jySzUuUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD22FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786740033;
	bh=bdVE1UqBYU8PwyoTWp9Zgs4aUlCevpQU+oaiUoN61lc=;
	h=To:Subject:From:Date:From;
	b=jySzUuUw0hFylVFJXfJrX5lXNrXg8NIC+BSIvHZT3gPCjfb0mMtmLn7qa7jcz/HYx
	 erfISo0AvkZAPXXyKcOINdm75DkEaGoNM8R9rN0rSNBw55dbuiiio7cJk0JeeZEljx
	 Xom0URMjblLvlKZLoYUbbJQ92jBNlXsiqDD8SzpBBVElBVHae6zjYdwh9wsIE1oSXj
	 /xAAxfnK14S3U9td8PCuYLju5pFiM/hgx1JEnjIBMYGMRgxrqxnv0QVi6H/MeRqTDi
	 uggQHsWLu4PUOs1tQIGEAua50NSPbbexRr3b2pELrWJ56U8ib8/rMscmVraw26AbH0
	 3IZAqiDgdsVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8DC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674003368.8257.6530290501780971257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de458fc00312ed7a2d89456f1f334fbc957a6298cd691fb08ba53fa4f14b2a81
Date: Fri, 14 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786740033
