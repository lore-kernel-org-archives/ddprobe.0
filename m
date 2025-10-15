Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F481F09A8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760541594; cv=none; b=T0WMxdg9g+u3wU9Se0NkiBBIOuIwRlR18DgSkafeQuh6lCQBOJUAzDaryg4C6IYpxGVgRGFACK+3XrNdC7bTtvVx+N5qnw9F4n/dq9IScC11Bs3SSX6rI/Hg55pg6xvKe4JJJrFVOUJAvmeP3grqWA9DG3ACtS9Pw6JoXciAwQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760541594; c=relaxed/simple;
	bh=VOK9aAHTt0jhLH1OT1tXi/X32S34fDWiuUJbOr9xRo8=;
	h=To:Subject:From:Message-Id:Date; b=nz1KeVUZKtivpDsMBwhpakeMMyPfgvmju1Ni1K/Yaj+X+sqCDO0rQi2lA+CWdixjDMhAohgDnpqHonUFDHjfO4eqqkTMK7+9+wfv5k65RdFZrzpSFai4W1DgWFwgE2bl+7rMcOpjQjes6CTUh5thvbHWs0a69EYQqL/1D0mSQRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei7QuL6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei7QuL6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE2C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760541593;
	bh=VOK9aAHTt0jhLH1OT1tXi/X32S34fDWiuUJbOr9xRo8=;
	h=To:Subject:From:Date:From;
	b=Ei7QuL6yPbr1oZL1c2n+PZD4w6qsl3UL1jtbq8CWpfWSCQeU3yS/AuQKXHFAqtFRM
	 zjaqVMKxyj9WaOMs5GNIYxHEcnaukNe0F5mHA5natr8ShBq4nB83FZAHiqH3OXtCHd
	 2vbIuM1N30TMLc6ToceBWABOZE1R3p3/m/S0y/OwotHdXGfr+7TGabugrXkeoacgeI
	 kh2GPHPynRH3/bbtMAbHM3LVbCyiARDBiyQ202ZGzq6Gfj6E0i5jEt4Zik7Gkz3Wqi
	 I3ue8/Jv2AGXx9UQguV0GXZiCqvwfFRzaKs9yjqCON6l+Mbk2cuC7G8qYGTV2czDw6
	 g8ZhJcGc/utUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9ACCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054159358.21168.714317287306229593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5f6d6bdedc67321c7c266953a841fb5405bf75340125ccf496dac1275f3b43
Date: Wed, 15 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760541593
