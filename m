Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3BF212566
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765820574; cv=none; b=n4Gqt0hMnF6dCQbr7hbgzdcrRcbz5pN3zvLlbgZFJtu+bOg10GnwO428WAZm4OE/Mu81pptVdKFFHXavEO8Nr+xjE/7ylOhg/qqnCHE9Hbb6KJE82ByaRC0mYpIszph3sczCBPFTKu+4e7ujQ/gkvSabwp5J+njBEtwoxJl6S8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765820574; c=relaxed/simple;
	bh=gHyL5DX8pu0lf5bOxVJXQ7oLTHIKnPaGO+iuMmupzes=;
	h=To:Subject:From:Message-Id:Date; b=qXa4LhWFg3B4Ivndr7Yp5jrOZVofjF8Wso1f73p+NJvK3komvs3jZRHhozUVXNLUuwiVkas9Ozd7g5kaSzsmm0WObbrR80Q36VZGFY6FCrkn1GX4XuuJyGBjyJRgLuffbqRIn9noJJ2H1wdgXQ2rY0jeQjk/K5Otv+VONZgx4F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpMjprnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpMjprnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF27C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765820573;
	bh=gHyL5DX8pu0lf5bOxVJXQ7oLTHIKnPaGO+iuMmupzes=;
	h=To:Subject:From:Date:From;
	b=TpMjprnP9nyd4tsujJy/XAS5+q9Mjo53TUapTtUMsEwfGxQ9vwNxbyTDO0iVl9D7I
	 5qBJiCHQs4WvMz2C9ZCCmjfcgniOewUoL1lTfU3H0Uqmd3uV+I+Fb8s2mhMVVoGVwx
	 MO+AsYTq6FkGMY5tHuOhf3O9wHNUVIJeI5sCcK8XxsuL04RIQ+Xi+bp2rJfASfQviM
	 wJahAAMXP+0A5OCsgcrPuI0KwxHg2GFwmOpusPVE2XScAknneprvC4VpC7aE2jO1E8
	 LtUuyPdwXmwGl+OlaFxKB6XCxm5phACUKfi6FAXwTlUYsf1Tw6VxWWC5rvnkjdCQrC
	 ikszJMS34tBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973AAD5B85E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582057359.25898.531486628347007723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31469c990364add5d35934edba91d6a2504817c18811071e6d6ccaef04bd1b20
Date: Mon, 15 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765820573
