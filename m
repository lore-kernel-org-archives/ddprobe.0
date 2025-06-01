Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43232C13D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748747994; cv=none; b=PhLLAKilQiYa9HjTl5D6r44tM2xb7xrAWamTyg1iNm1dWGcwhyZaI9mlStUjYHW+kkTVtk5Ba/WvHxiZVVe+ubJOnJjMJc8OPAmhxIlkN/TghK1TDprbTtwxUcPvyDJ0lxIJ++v0Cd/HdV3fYgE+Elw0SaWcXuQyFBxfVk9QP1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748747994; c=relaxed/simple;
	bh=GTExVisMKN+Gu0bjOb/aTEAary2lGcluX+vRoVVz20o=;
	h=To:Subject:From:Message-Id:Date; b=WZTt62awZiSoK6SRB09JSDA1i46c8y5Diq8sQUfHL53yifoAty/rVxuV2Wu7QalEcn4Xi0TfXp6zcd311/bMo619UG97GBZIs4KNJrpW6hVoQxu4ZELCTJRxkisJ3ymJ8Yzsvrm+qrKKR00Dls6Sh74iWDqpnaHzjN0fckG4J1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8YEL/6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8YEL/6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A402CC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748747993;
	bh=GTExVisMKN+Gu0bjOb/aTEAary2lGcluX+vRoVVz20o=;
	h=To:Subject:From:Date:From;
	b=I8YEL/6Fh1MYgan0XRZ8rtrVPeD4E3TiwPHRIA/sIGZzItxpahX9itbmZUMyE3RpM
	 icuuFLNqHU6+7DmJjfam/hPuV/RZMCzm1zQK9ye2czs6rWMdqis3AoFPxe1+4k4Y0C
	 sMkkeug45f3guTK2QF/ILi52/BXIwWcUFrzEZVnoqbCsj+3A+8zdp9LFBo9xJfmQ0b
	 u4wpEjmrSidxXtp7rECWe+oamFTW+YppuA31czXg6pQ/wFX+0nZMAV4beF7q6gDgrK
	 1fhrHSyTbVkI1E3Xh0ucdS9BNuwAyHqhK1Dqz3vjTgnC9vRnbi6P69jM+vLAK2iLgX
	 FgbBHHC0GiuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8AC5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874799358.23491.8962791891173533567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3448bbd18898ed71b2963cf836dfa1b9fb64e0a39f275f65d6a85507abb6a51
Date: Sun, 01 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748747993
