Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327B7394481
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775498734; cv=none; b=s4lMowuRewj/jXuY63zd0dBuBB8C5RoExtSDYr1p2DYDS2pFbdEe4VbVD4apC2Oj9AYX9CIH7z2phNuLX7VJ3UdgaRRp4znMLfEPNhGSyTlsgPP1SwFgBqXrV1NLQVNEeLrXMyBZT4Jd0PjnKZ9yofAEXlwv7s2MR/8b3x9c2gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775498734; c=relaxed/simple;
	bh=l/pH2kkYZ64S/VlSAUoZid1RnTYCw4rGu+viLr2FOGw=;
	h=To:Subject:From:Message-Id:Date; b=nCj4spyjMU8NwiMUabPvkTpX80nXWtZRBG8Fpn6zHnfCVKZglWgUKGKnhdnSs1uTm9ByahMBZUJy/541gJgHZ1+Ri4wPcb3JLZR+CyCb8DufyeDOnWsmNd47wRru96iXP94DuYBBLq1GDVcGiBqxbbOS3wQLzSBOy3jt6QgfHrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0mNG8zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0mNG8zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB345C19421
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775498733;
	bh=l/pH2kkYZ64S/VlSAUoZid1RnTYCw4rGu+viLr2FOGw=;
	h=To:Subject:From:Date:From;
	b=E0mNG8zsX+HK86a16niQAIWIwwnc7L9ZvPdX/ipKmVy8QxZABWzsEeloLl2JXT0Av
	 d2P67aaZFa9VF1VX0SJy5UVcD7+LD5mMcQFLteUVFrDMRL6VyIWOYICTvvIet+FFp8
	 2Ssr6+YK2Y5q/PZZQWm70FZPgcb+0E+VfutyZ2/+azlnfE2Gwwc8pTbdwQDt8spqgA
	 ksvxxT7gg15zhc+pKAaRwfoYsvBYK1AaFtHUfQTu2gZwHHYYCT8w6nqyb1TazoGQcc
	 v+3LiGDqm1NCPXcVuZsTn2FgHb///79y5To2pQ6btOOlyko4kr+r5qCM7+z+oE8d1n
	 ltb+VzyibXn4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF780F46C69
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549873369.2593.16550466205918245322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88811e6d9172da5725998ddf4b9d176c6e1ab4cef441da60116b563133be916
Date: Mon, 06 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775498733
