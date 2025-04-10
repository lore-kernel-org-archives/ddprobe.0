Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F42E214815
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744327794; cv=none; b=GwzKi4oUjEQweOO48NKcnFydvLGiGTWRoz9koIBGgTMNySpdmwIwgA0oYYWmZOttBvb+Six6AjYQtCm6eWgFkx/Bxy+UXtjIV+zlkZ+Uv3I3fIYEH0CuHVocVkYAVoGJDGDlZb5zGoWq+NvJu9n+iYOiwxcxABLTJ/htSxLolmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744327794; c=relaxed/simple;
	bh=f9oOGw4gZpRptF63CUfcu0qgELNfupYDYCzLJ0n21Zw=;
	h=To:Subject:From:Message-Id:Date; b=HcYLHOLax4oSM3Typ8Xck/8zpN6i5qU9V6r06ewSaVyoJV+8KmjSaXy/t7p8YleGbIPPmy/BNjDxsaPPNJkoeAHHswmQncab6X4hgSVbvxHrl1WNcK0sjCyLN9clE203qyhe07D2bSkBC4r9CBP5WIr8LTzZ/4jT/Erg36TLUho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX/5GNEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX/5GNEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744327793;
	bh=f9oOGw4gZpRptF63CUfcu0qgELNfupYDYCzLJ0n21Zw=;
	h=To:Subject:From:Date:From;
	b=DX/5GNEyKSOXQw1l3b+IAuTKjGwBoFQaZVPGW9XHDwqPp931RAt+PUunaB0X+kxYr
	 yrILDWem9eQc+5xS7AMKE6I2O+JtoU/vm7iEj0recvjCkDVj+nsgmSJuCD23rHiUKf
	 VlwzqsVXmKAPo/ULH4FpTyinRF+lxx60U1CNLTr9WNob/niZk3aeUci5Riqtt570GV
	 Vw0xUIXvAtmrXIs7SiCDhFwzczyHSQWiKAwPVwqfx7i3AIipMqZi1KCsx0aeqb+Rxy
	 0VZJptv5Aho1eT4LXzq7I3ipRfxuK6EfHRNcli4FUeWWoyfKe40vs0jDq61g3We+fY
	 wGpd7ANyYmqiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F2FC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432779360.24378.11651820439406626706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa82438c619dcc3a5a201aaf42480887390990b94e8a61cbbd1901d88220514b
Date: Thu, 10 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744327793
