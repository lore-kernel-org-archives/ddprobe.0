Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0CF134A6
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714374743; cv=none; b=GeFoU28r2CMYTSc89Hwasl6mZo54z9VeWM4j9s8YaAFVs6vl9wwMGFjcoED5E234DAPlB3jVxtDhxemE7/SbQC3qRkfb3ul47jjNMxfV69qNEEfd16o/y1itaR5uRg1GWvWDdwohbE/1grL4zBvn7xhaSVY56y1I3IMvWPZl7lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714374743; c=relaxed/simple;
	bh=bm5TX1XhGp6DX/NmiCBrWrXaeTbpVgK08kkbHuiGK8k=;
	h=To:Subject:From:Message-Id:Date; b=u+7EKt0vLNrEPtLipdg2UNSnG2Nboe09r7sMpjAN9V9DfysUlGtFYcmhvz3FgYrAkyVRTuGqjthfoFWQ0N/ifPmqAcI5v29j0yUZU+1mf6MzBayhGDSZ6WAOjmNHZDQMjESBQXj8YE41YcKnqVpopW2lYSSkv2188Kby+0X2BdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjz6g4YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjz6g4YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC9BC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714374742;
	bh=bm5TX1XhGp6DX/NmiCBrWrXaeTbpVgK08kkbHuiGK8k=;
	h=To:Subject:From:Date:From;
	b=rjz6g4YGFbm2pKAmeCn31mdz2k/bMPY/H7T1YnardSmVp6M5/523pzn7oTgHcMt3A
	 BZkFA21qlwldMXvZ/2Zh3Ez2u6Lv4ZoeIlSBZB6YJi6a2wRydujLT2SbpVrHZPekFl
	 Z5GraSR5hMYP7uea5GUPPnnN8dCQO+8Jkeo6Py7i34oIYuFXD0OQkJU0uev8s5XbLc
	 Bok5xB/xAg7PgP6B/De9nYn7y3E0tDzFbJZguu5GQj8TD09jR5f6xZIX8HzpLIQU1R
	 81Hb4AI5hPWn0fjVsDZ405BsMyfZwv3ncpHUlpn+U6BRbOFSmIqQunJKwx6cXloyw4
	 esO5JzDPggYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A59C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437474278.29698.32888583124634211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085dd5423f4e6fbc31fdbb778c5f0b4aba4783c3c4bba82fe7e0351cfdd9cdf2
Date: Mon, 29 Apr 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714374742
