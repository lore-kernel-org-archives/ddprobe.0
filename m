Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36694D53E
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A1CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680820085;
	bh=Ce/kamV6NkN9+BfGrXyFHLuait7JVuzZhbtPdf4Faek=;
	h=To:Subject:From:Date:From;
	b=qK6a/7hY5+9EKR05qMAk+wT3NFmQAJoFRX+zZSebZI1hCajjMPA5mSn8vnP7Uypb/
	 WrgoMby7mILHPogyuG0bqMvoCYswzgwvXToQjfe9pv6cTTWS+VVIBrGHW6GtMmW/gP
	 O5vL14JEaFVIFBVdkItLhwZc2fGBo1T83g/V7OwpCSa3JvntCIKCMtVul+m6RRx8sz
	 dhgFINBsgVGCkdSPCiGEMyrf8TLRSFMvPhBdnw9u/Mt8FSXtK56OWMD7flVxBR1sKA
	 l4NYcZNXsPm1FcQ2bSgwUeSp5h5nDPxKLKNJPx9laK2q4RHpt9mUC1BnJdqa62bT2d
	 QFaGgDbjZd1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A19C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082008579.24849.1880549240980743049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b9f35ed27db8f69f8c525540385f94c854d3689b8cb4507e2d5c5229cbe868
Date: Thu, 06 Apr 2023 22:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680820085
