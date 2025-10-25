Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6192FB99A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761410394; cv=none; b=YK7Hk1j35dV1WjBgOCoSYfpTbje/xhzVli/lu4INSBvMCRgUZPxHjjDVVYJwzsYtgoA/tWyNfzvqwri4lWNbe492NL20sf3vYYz+a0W5gM7PRzg9yMnvLWwhID1Z7ow5Kcpl+bNPG+vhHxJFiZMEbQzfMLJ9XIGMBibAnITk6y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761410394; c=relaxed/simple;
	bh=FZGO9EBG9re5ngkXmgI5+GDr7dV7ktkfnpVKO1LSYnQ=;
	h=To:Subject:From:Message-Id:Date; b=SJRY1G7IeWGsmARpSiaUcXbEXA/f6yaKkfG3vsrryPKsAVe3z2DBq0mWgNLvvgLfKt5K/KN3AjJrdIT/K3Jf9Eo4OhHs0Vz7GIPB5mQljbH4UEGc5ybROPLLY/vNVQSYm5mEMxWWJ/sj8+CLSZo6an7THAmEVZMseWdQPZGSd80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPpr+lO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPpr+lO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0465C4CEFF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761410393;
	bh=FZGO9EBG9re5ngkXmgI5+GDr7dV7ktkfnpVKO1LSYnQ=;
	h=To:Subject:From:Date:From;
	b=nPpr+lO32mu+S0UFpKYcjlsOjJ9FfcCHxWmu0l43NPBCGdtsilwC2/+HYOfJHi+3I
	 V6q1MTHOZa0Bc7wBbmkJHOwdHxdBxRttIqJixlec1CgbXGxtFWh2hQusFAbkkhccv1
	 nXJFPwbAQy3uA8Es0taRy89KfZSaXby92THw+fQPnHegO+vmGz5C+iusWrx9GHq3Hd
	 +74IabWuzWHnhVxNv2CN+xkHaLB9GEzLWe0TcTOUl5bTDmEsbFWuYtOJ4q6vnim6jX
	 0pTzOFTWO44Fe294suV4lkHRytGbL/U5BYeiwltslKoo2uUtQVeoWBkBhOgxAq2uYe
	 tWOK1bYtzKEMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFECCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141039357.22434.1822325752377147435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df662484cd2fc887957f48228a5ea15757dc1cd9e21e1dba07c276412c2ab83
Date: Sat, 25 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761410393
