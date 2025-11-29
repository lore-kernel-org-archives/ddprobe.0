Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F222F85B
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764406974; cv=none; b=JrElloPfGYXgJEoCqW5dqPxmTa9PCRGaMheA+uS94rG8cnRdvggT5U+vHwYII1P3WIkkW8lQ2W9o/WsjBdGY8f03wYPcxfG+keSMGs6WCS/FQLUUB5e43P21ejHD12Vyi9FvPikwng4d4fGanWhsTd8nzM05aB6DqsSY3BEgUyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764406974; c=relaxed/simple;
	bh=cvBRos572CqMQiwBd6YBnKbKwSvHf1Ssb8waAmvZZ+A=;
	h=To:Subject:From:Message-Id:Date; b=L+9Nivl/Kw/A0TJ5+yeIVLRGU3xUsBXyuDdI0/mLRfHwdDjdKFotQLFsX4pGaf4V5kwkZCuIMOyOWh6lDiZ56bjbaFp2egU83Hk5Ry37ohzzeAc+dT6vGtwRA1aX9rv8iXnKCAv1qt9wpeYVvpdb6pzARZTNWXWnuUDhBYjwY/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdXBpZhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdXBpZhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764406973;
	bh=cvBRos572CqMQiwBd6YBnKbKwSvHf1Ssb8waAmvZZ+A=;
	h=To:Subject:From:Date:From;
	b=OdXBpZhL8jRzzAVlY11ckaQtfGcmgCnhULBnLIAUzJZmOW6m8IfkN0w2B1uSR88db
	 OrjqXxNRe7ypRSRZGH3IhJ2LP4wkqT4bBck/UzUzTHOR9Io8Gdtv19soFbaUh1z64A
	 44iEYxzP9PxxBH6W/Gnt3/3w7HwKnCtXzgcLSM8jAi0xtTclojWbnHyIELmpwbGV85
	 vftFxs6nAhQrx/5RTs83R3PSw7QqKU50rq6ZlvpCFd2HFr8C9mANlc0ZXXfo4mB05x
	 SdHU6WxNlQEcy8awBlOqdA5dSDBSMxRnjZLoQ5ME3w0sYu76ASGN0h8dKscKutMhWQ
	 VjuWAOWrr5Lsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D20CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440697358.29347.17930671493975120438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e726423f98fcd11ac800aa95a4349f45e647b4827434adf8166248d61ff78d7
Date: Sat, 29 Nov 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764406973
