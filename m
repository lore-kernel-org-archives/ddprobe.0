Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AE130EF9A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776416254; cv=none; b=Ld8Cx1LyYGqulNUC7d7pBUcaXIjNfNN/lLy17Gk2Z34IemA0GJrdIwbRiJLbxacFHk6S8Xcn/Fuh+1QxRG8l4EEgLWlG5ERSdvTJjrNDmnC2CWs6B4JHzgiVr2tRCwCXndM+zFHGqGSR1GW/JX3PVoQg83TS2QH09LW4EiKlZzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776416254; c=relaxed/simple;
	bh=pstkcBp6aVRLhXmnk7jbzt21DGqDYF2BnMKq1ozEWBc=;
	h=To:Subject:From:Message-Id:Date; b=JyI+/2xn/RUPNCUnqcXDGDtFRC5eOn4C1OdCNd7/7PK3k1U9BJofjoqy6AUYF1Girxg4+7ov8ztBfnBI+QuMqegyaGrhEzDqoZoDT3ROHjgjcYJZ8QQbrq4iaIfLAdG+cULXlqiKrzFcuowR01WSZ/Np9Ah8+hCuJD0fy0sib08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brzlQgm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brzlQgm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA10C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776416253;
	bh=pstkcBp6aVRLhXmnk7jbzt21DGqDYF2BnMKq1ozEWBc=;
	h=To:Subject:From:Date:From;
	b=brzlQgm8wpjDjJ40mhBOXzDK3aiaX3zkx1BYRn2iWwCip+MToKZp4k/Gx6uxOyieb
	 WkH+L2hpE9ncmj4/kn/0UCRDTicmcd4u6/AUJOC/dj2m4kQYgD5PTRZyMoDErg6bdz
	 nKu9jSczBfBeGo01eNwTGaULAOnZ2LQLJKOYYpqM/ykD5xyD0tqe6dO8vowB4DfR2Y
	 Yjh7iD6sr/Xo+xChiHwk1KwlRxUzkeO1P5xdVa1KnRO3EVUbEav5rqGVmo+BfUHWZZ
	 0rEPzpeRHKT0pVfOk51H8bJZkPRnnI7Jd2PkcE53KRpYOr93cDpLlR7z9qhi6ImzG7
	 PKatncb9kKVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD691F43682
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641625370.12758.13294633640776943527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d909977939d847197972c81d5919a81ffc56288338a480bcd36993bc55a7f4
Date: Fri, 17 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776416253
