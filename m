Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAE12C235E
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764350574; cv=none; b=XfAZ0ZHpoo8Y6t85gBS32WoGFDGizEwbUhN0kh/7+u9IcfeR8gZj0aYRduqlAu7sqLNe4nOievUJORBYBr8mMPj7nI7WKNz/1qPE2KfPnGP9mtoqAr9KhU5TeVv/QdLb7VNaBcMFvFw4WLn1ATjyKtC2nWmRDKJLk2kMhjXokaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764350574; c=relaxed/simple;
	bh=m2IgJwsT7a9LNremMYXR7qlVn8/qBd4gfKV9wR7T2cw=;
	h=To:Subject:From:Message-Id:Date; b=c3slTnHaRBqP+TKLOxehCBki9N6VPMyuM0eYOM8bIYUzC5P99UTwuTnMNvRChUd3P93La2Mukmh4U5ZByGyIqph6j71huNP7SUrrPbtS45t2jjh/tiTOmqRGwMtY3GVXzcgrnyna5cBm4GuPPVSyHndjoHIVB80c201QFoGMt5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmWY6+ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmWY6+ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D12C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764350573;
	bh=m2IgJwsT7a9LNremMYXR7qlVn8/qBd4gfKV9wR7T2cw=;
	h=To:Subject:From:Date:From;
	b=FmWY6+ftKWhBo+uhDl3y0a6/YG3wKlDBeyLLeD32N26/px22g8TeOiCHcCyKi5Ol4
	 enf2HeVPIO6N9NI5jim4Ar1vC4mKAUyTwSCKlbT6SOUkqj+tW9325mfYb2+A1NPTLc
	 LkVXvCNxe0gdhCFDZ2mPFU0q1AY8Wxjbyi+dwL9mGy7ZPvzK2OzjvD4Xks2nys0sHj
	 wh6foVFoPrU2B6ZJBxkvtvApuNq+OWpBEAURKAiCvWkMlyz75O6oPje5/Ip1p/Ss6H
	 SoTb8p9Hq+ZvCKfxjoMCULCtllfIcn19IWgJLT3jOy9VXHCtGjyxMFv8QgFJwTINx/
	 hmDzASp70ilhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBBD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435057358.24043.3365328701884884632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5664f1840831ecba917deca8c2ae44e119a019830f252f0932d11ef3a4dbba
Date: Fri, 28 Nov 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764350573
