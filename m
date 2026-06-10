Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1B3890EA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781075734; cv=none; b=rqBclCLCWNBnpO0VpXxFyXb14JaWYM88za+V8PH71mDJdrrOHZbr5nB/qpD5ognr5cEjNvoT7PsglaQOPqI9yvkD5mgFP4RMnY3JYAHdQM61JLZROzNgDHz3Zt5PAqtMfpsSZC9z3k3oT5bhJMkyHaXRsfk8uLfqdY9jGiuUKsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781075734; c=relaxed/simple;
	bh=jmG/MK6K5CZj9A8ZnHVLcQEUSB9VPJy4EN+l6bORhV0=;
	h=To:Subject:From:Message-Id:Date; b=bvtFWnlz4Vv5H9v5597mson9EjWujZywOEwSovQS8p27UhEiYiOP4KM0Rb8M6zc86c3+DLwrI4bIfShPSfJ1ZCPVXWeYmFLga1j/SipZOSJ/xcF0OOmTVEOcSVUniy98/xiEThZMOyKoY04Fum8BKopqs+LQYY2/uf6tNpOdOH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuRKL1JG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuRKL1JG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72BBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781075733;
	bh=jmG/MK6K5CZj9A8ZnHVLcQEUSB9VPJy4EN+l6bORhV0=;
	h=To:Subject:From:Date:From;
	b=OuRKL1JGnpxIq77Ema5Viw7qtb6aIm8DQg7WJRMStoq7OEUz1af+XAAIy559htlil
	 Y80vp0khvBNOqigtThotSbiZGiu3RKYZeHAW8FCvvMYQe2AQYi6jZKbjsuDn09z1ST
	 nnkKLbnyli8f+aq9xDNamL0lb5nV4Zb9tDYTxWl/Uuvo1Umt97t1ziYjltFqZ51kIJ
	 1kob68Kevaxx3xBKh2PkiKPkGI0yE2rH21uzW20qKXWyh9Xnc+dMPMu+5etn/ZELWB
	 E5J7cYS5DFhri02EeTnHyVKEXv2ixtpyABlez9yy7rXCSBeZbbrg67w8KAchNu40Vu
	 iMZFlV1UvvdIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC137CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107573369.6778.3371539464856014515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa3fe26a66c30bde41e21ff66f2a363c25c18e1a1de7a99c6e4268e9a04bc88
Date: Wed, 10 Jun 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781075733
