Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B332765D0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759432794; cv=none; b=F8zI3WAjvM7v9oGMaeiR5cQmbCgpzFqycFU79O2GpcxRdvG627Iyb2fE0Kf2HPeAGgjpGbJXAzwU85SVyTRSQCJIAIAwhvZ49Uyn8Fzf4rRY6Mm0Yw/oOkI5WtkpoOTni/PZotu7x0kzdeyaVxv0RFjNfaprqmBq1GLxBbQkIMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759432794; c=relaxed/simple;
	bh=BfcbXVYuWhHCMAKaFv9agiAthu7pqZMpiIvOtqaA+/Q=;
	h=To:Subject:From:Message-Id:Date; b=ib3C6Ubmog71JUmIFqbEhEI+3woZw3tE61pOAS1OvccVd7j0JZHo+rQnRD63ZV/M3WrynlT0RnLjjUYVgrZmE41ZwAfAlAc9cnLXjMFFadLibUMbUT8gXE1xC0/Kf8j498kI1KUp6h+l2jvfa7K2rhFaCdvtfrcX7+bC3rM1IHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK0X2vyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK0X2vyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A8AC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759432793;
	bh=BfcbXVYuWhHCMAKaFv9agiAthu7pqZMpiIvOtqaA+/Q=;
	h=To:Subject:From:Date:From;
	b=UK0X2vyqpk0nDat/3XybxaVPTo2WpTHC6AvFO7iHBUEm4SaYxNraduZXk8J2Mybvw
	 CJALogh7B+hMMjx+s9EmnpX9uANR+Ex6WYiDpgvwI9Jg42rHaU523aOsQs3BhX0bSI
	 WRYAxYdi+WB52zl2f8ixEMyq7+zZQt0lFMgOPPcvLGiJlkFvPK5yNXtZQnUR4VTF98
	 ML5ChcG6FBXKk/m0NaoRoQBDkuxpAPYfxngaTTLeg/6mjL1KUp73JkSaG4BzlDyTMM
	 GQNUfJALbJt9AfVcqTHYFi3i+fyrls7YsNOXXA5VKOSem9qIbYsh9TjquW44Fy4n4e
	 +dRoOOG1QuuoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F765CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943279357.32178.9772475113741265458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e2fcfb160153aead08245037c12dfd918b4619ec99df106f1f42dd0420d407
Date: Thu, 02 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759432793
