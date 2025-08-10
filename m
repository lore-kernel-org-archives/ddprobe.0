Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330601C4A13
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754821194; cv=none; b=QLYNQ8sg4oOR9PcdpjAGwD9zFzqnei7SjdKPbo7K/zMLWTxEB9QP5CanJz57Bdslr3TLbcmm9iT1pAmvTEAfyDcI4EAmSSIMvpQ4Yyyk6128DgOGu0J3vR88gBsqxtraHOmBLrALATPeCiVBPdiMdzTMnmVj9F9JD1UMkA3Khlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754821194; c=relaxed/simple;
	bh=xnX5lnqC2oVgbhGXWIKWOa0zqpebac5TQB6rzvlXEUo=;
	h=To:Subject:From:Message-Id:Date; b=BpCAPUNml50zPRG4H+6IxupkLDQH9Yxa7L6yVMPNo6N1s4egjDCE25KZdkoDY3yvgMe3e6tThLEJfrpiJk9WtD8EY/JEj0TtxteSjm9Czqdhdu/Nppl1a43EU86mkbJMJ+lviSRmX6Bt/YOi/5qRtyR4dyXLzu4Hkj5LSDeB/oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei2F8/mY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei2F8/mY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754821193;
	bh=xnX5lnqC2oVgbhGXWIKWOa0zqpebac5TQB6rzvlXEUo=;
	h=To:Subject:From:Date:From;
	b=Ei2F8/mY4BcFP7y+ECrjysJexM7+GoLkmlz1ZSrJ9BdnvovOZGlhE/ZpV/I3JOcP/
	 +iebCLn4E7vYVujxmgN1V2mJXyvfQqB1+6nvkRDqSPcyY4ZShLU9nA81gZvUpDVt3I
	 ONNGYC8hc31GZaTbcwou50bFA2ePlFD7BeGD1SCspcN8nWNWw/HPHxsd9DZgoailX6
	 Eiv+tEuhdlgOWv1I+Rywk0M/Bz5HdsOIXUZWgfVe3/9bLRYxWL9WkcHj9/Z1TU3WkT
	 IaExU53K+sZf5MTbNk1fGDojNV9H25WO2bKmYJK3+Oq35obE5Ak0MRuXcdWmInc/r8
	 U2e+yuLlAMc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCBC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482119357.28268.12953775171183285681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160668c64c284008fcd91095929143916b106d841b2de5db5b2cfd4280026130
Date: Sun, 10 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754821193
