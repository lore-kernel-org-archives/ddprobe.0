Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A4031F9B5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783016914; cv=none; b=gb5yiSPNfVsIZ+djh8ynty2PCZuB8yuM8Wq6U9pJzgXdHxempHyLtWmNmdNdpztgEx0dlfNSHMWNhA9FGYplbooVHeaGJkz+44hNLGxHVDKvdyBjXfF5URqjcV0qujnAHrN6umlG40Novpvy4I8yqJaFQD4pgMqlnYjPI/hZipg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783016914; c=relaxed/simple;
	bh=/epOaV5kAETE/jpi4E+skhKnVxPYqjXRE5jopV+OVaw=;
	h=To:Subject:From:Message-Id:Date; b=lgKWgqF6zBC+01vSaMBAKRX1opJVa4QOtHAPmW/mNX8r5chhEMtKFD7s1xkVy//WOtjuR2OfrrYQaRATq7AxlaMDrDXEo0Js7lVVQCOo5pz8PcNsBWLPhO4YAUiYctDFnvAPj5PuXSQRPbglGBA5h1iejJcFE2JGKHPoKtYUBAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QH+o5oOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QH+o5oOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCEFC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783016913;
	bh=/epOaV5kAETE/jpi4E+skhKnVxPYqjXRE5jopV+OVaw=;
	h=To:Subject:From:Date:From;
	b=QH+o5oOi2CTeCFVWOEZ1f2KKMYd3qrWx6rQ2vYPLzCQw9OeDS0YhY6WaFwbUYttt8
	 HxGi1HRLt6UXGZC5OOPiwCox6obL/iR1wJvQzyLWIlCq2cuVm7+RqA4mMda6MjgFF1
	 8jfNOo4irAjEm3uiHqGSAjV/qGCjT9tdIBGnagHnVO/C3NdCftj8o0l73t7a0tvoKj
	 /G7hhPfqDxFOWkHAMkr9d1zmZbjH0fMjUjC+LIYjlPD0EPNWUE6aoNS9yR5wjxW8Aa
	 FDoKzC6KbJeKc5FxhjHredbyKCSPdhVv4lyMhzr1/KIuTGFY+sBFYIj38fc/2dYV7U
	 ogBptJRc2H3Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A2C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301691368.13234.3919814563967503346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a0ede270025fcd54edf730b9442659f977daa1ddde020612a07310d17e4ac8
Date: Thu, 02 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783016913
