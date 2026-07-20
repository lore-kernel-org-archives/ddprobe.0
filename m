Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CCB43D503
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784566714; cv=none; b=lZ4+mkjRvxkkA+2Wqwy7jMwGNyE8SWOAEDKzgFRWIqLpqfwva14hlB8GoWgMKBMiZoTuIfivDinKEl4OPjPf9LTN/POmieuM5vW+hkSIiUCe+eTOmDnaCgG0qoHNyrz+4HuUeev/rmJuT14gF70+uhts8A8oMJ7C3zMCSYlhKqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784566714; c=relaxed/simple;
	bh=uZbwxwM4Vayv/GsGYDz+nFjZmWzm/H7vQnuPhEfy/yo=;
	h=To:Subject:From:Message-Id:Date; b=RmYZrZNQc6RCdg+tzfWknOUqYTfif6yeqno7vEdc7psPgC0U+nIaRZiJouUesFZ8GbzzmZdliUDNHuVtqZ03Q6D5peENT8bqs3TPJ9g6iQJgKScaE7i7T0xF70C5WPgaStCVOBdcb+GCYsZeMN6IZPM61a/XCK6LTzdwrGDQ8N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzXr5Xtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzXr5Xtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784566713;
	bh=uZbwxwM4Vayv/GsGYDz+nFjZmWzm/H7vQnuPhEfy/yo=;
	h=To:Subject:From:Date:From;
	b=RzXr5XtgVefS6gLE+c6fKjUFzO9Vv/1i0c9Tan8wzI5GT+uIICSuZrckuZC9Ecm02
	 RCdI22cdio64F7u5y7NaJkAFAeiIY2ujof8E6od4Gk9od3BXLJA0jOaydhor5goGeF
	 B4ktVDcVNbUCCpRzcsZm+p0pbm3eKGQDnhwi/hMYCUx3bSDYFgmoYB+KpCz5GLmKSz
	 9IbJ4sCdCZmmsXIULeuFwkgYh0T9If3fZM+T/ywVGAbzAZRCOlRHHwJYcSg0bH610c
	 muZ2gawZj7H54YEabMcnZtYflOIelOStj12ZVRbVqCjSSjClm9ni+/Arbo0K3VK+px
	 zI8W2+pT2/OqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F2C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456671368.29355.9487413770323192194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211fc478d220f83970a1241bb4078544f8e8eb62d0ee83895f19e97f32b117a3
Date: Mon, 20 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784566713
