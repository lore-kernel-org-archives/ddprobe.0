Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003B026FDA9
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762271394; cv=none; b=hWcvamDpIQekattVahrvQxOeDBJAtuAj3QtCTjhTZRr8g9G+p2XPzl4NTmsnxkhmCwzmYjQ5GOMRGpTwqTbw0w5KcWFw9Y1o/2qzOozt0TnAxkIrDW7PenJD/aFVt7W1YUP5+SmRM2axS1jpMstePaB3+ZqTHRQKJ0TexFZWBEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762271394; c=relaxed/simple;
	bh=3La1HDIeKcU5f71+q1Vi72MbI0OfxRDJbHKKcX824J0=;
	h=To:Subject:From:Message-Id:Date; b=tnWS25EF3p9XtAhwdEQNtRMq4h4XaKPtjRY/zFlJ1+iGhDP7W2I3p/zghwrsZw0/by5JtiOgOGLOwNpBYsaQqD+PjRZWLwIiiMAZRKwOiAOaeI+a/gpTrJnZlmSftcoWHaWl8G3Kh1hrv3pjUOkrGPLIuq9jMDhfHZeo/oM4blU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVOFMOzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVOFMOzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F018C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762271393;
	bh=3La1HDIeKcU5f71+q1Vi72MbI0OfxRDJbHKKcX824J0=;
	h=To:Subject:From:Date:From;
	b=fVOFMOzcMmobl76FyRvha3kr6leDJ9G8XXG/YsvDotgxwc+USSvtdJcDTSl9BxEO9
	 DG5xQqDbMvPSJ2d0ARnHMNbdmxDG/HAIbAd/5jVwG0BkJSr1G7x8MtNUYCeR6pfi9n
	 RWCup4q1mFQO1mlHBWS9+mQ1ota1Qhvec/YmKuwrXxmC4nUJVyn5nt59/GVoM2imQA
	 gFu7TeUsfnOu1gcWbfdNgJN4KJEGAUleH1R/NE7DYs+X77YHHSQDoS82dpkA9AH1QO
	 ekj1hMeKvxfKGj5aIwv15zoofmo1qqg5Su/7dahkFTYralXvG4hMoEzbDgtT4bKl+D
	 uTihQarMK1HvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075FCCFA07
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227139358.30922.811667468663284074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625a547d121052028d4915244e32c1ec430057c42089e87f2c30bb154a5d8077
Date: Tue, 04 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762271393
