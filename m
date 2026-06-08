Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E50D34751D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938274; cv=none; b=hamcextIkdkutqTt2wzN1ZUx1vBr88BI84TcNXn1R0CJqzf8VJ2I2mJgvyqn7fVpPFb81GDDP0ih7sMxbp+FA+TNh/5KvNjVcU0lNOjIRgBYfQvGPsCsRts66FjtIaGu+qS4ruFQmub5Vi1HKNvzYMylVZJTct9fxNZUIZGs4bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938274; c=relaxed/simple;
	bh=8gYS6fouc01H+vhAA9AYSYXVpUbWLeIMX4GPCfRPm1o=;
	h=To:Subject:From:Message-Id:Date; b=AjG4T01C+IxllpLqcg9VM7M8zu7JhxUXNFNW32kpUl/IpIbJ7u/Efl7jRVbGLj2EKj4cc9pcQmhadXMPtC4eMo2iRFa1IYWABq849S4YLecq9Ye1lPVboCawL6Xpt7bfg5hQMOkrNeLoooiuHbxcOPmkKB7guu3idSqSl7r5k04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx6HuyY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx6HuyY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F22F5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780938274;
	bh=8gYS6fouc01H+vhAA9AYSYXVpUbWLeIMX4GPCfRPm1o=;
	h=To:Subject:From:Date:From;
	b=Hx6HuyY1LNhw1V945YjhCJ1UWZUyRSbRYQKeQuRgAQ3yiEyWwwjLPFGhpIX9etg/1
	 /3uOwKpB3wSDV4IZmo4P9LIQGeRb/54W3SaKHLrn3pQ7DkN1AnU7ad+lVNhAyaS/gl
	 K/W1jJ8QhoVgP8tX0CRS8/aO9DzvWZu3A19ZVp3PPbZ7+sTFbySMnE78NlmSTLcfCC
	 G7DBC+oluOiZoFCyu5SqjQKuW9VTIA7pYtDDFzCztu9jyPwl4x1/6XUGQt1mnL3A9+
	 JLI472R2UCi4od4yFrXlL9HJT4IRYPMiGLeso9oNTipacO0YItK2FGv7bjv4mBciML
	 kE7kN/8LJbEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8307CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093827380.9381.14211730245955160543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f087bf08d76adbd92408593c9232f05232a60b63487388af06a5387cbef6359
Date: Mon, 08 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780938273
