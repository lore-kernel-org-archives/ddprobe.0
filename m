Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6617627701
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717622243; cv=none; b=hnjPOui54jgYZOLZRRLwA4R6S/xI8eE8rTngmNHGbHqQ/bJAHU7544F1ucacXbwIQuQJPKywTFOFOvXaliHSfSNriqnJxOVswlqM7qFaDNfQRjvTD5ntQrx4yTdSDgud4bw8iy9Pk3+BuIcz0mXB2pZn+VRikwiJHUlOzalEeS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717622243; c=relaxed/simple;
	bh=eJiTt2hJp4lBEdsLPlAah3rQHvclzRgEOkWPkOsnr0A=;
	h=To:Subject:From:Message-Id:Date; b=OC5lz5zKjFM8sTeL5zzl12zd5qudS5b40qNlgdPK6vJdh7skrqEUU7HWrQGdG6pv3IXlelJxaWTjXdLwctwbnpzNyCYZopzQug51vd6ujyK5Fj5PrGAunIzo/Qr3YGZv3sG6wd5mReMMfVFs/+cvcyjAj9QTOf+90Q15t6ject0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsxxhkCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsxxhkCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A913C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717622243;
	bh=eJiTt2hJp4lBEdsLPlAah3rQHvclzRgEOkWPkOsnr0A=;
	h=To:Subject:From:Date:From;
	b=UsxxhkCclpafVdg5F2ogFbN+OoEd35OPWWRPRZRStsg/oG/RRD/MiYzaBUZ0A1+VZ
	 gmK7EiKZWrUQ3g0X0UKcMwQF59lOVp0T48gUVF0Tg6b/xFy/s5kpEc2xqHabYZpxIJ
	 tQY2jCMBXJHde+sFbJK1ydKXjoXlRNZ4S8IwOyC+RDZSpbV2Qkv4i4EvmeFLH4P2H6
	 935UuRh48CrfHGJN8882pUPnfi7y9m251TFnXhfRWFjmH4fdMvyYu/3zy2TkJZUD3x
	 pRf/kt05kAnyIzKb7zvrUa+cFUv4jWmWOhU5Q+z/strDZKnz8chfli701d/sUVSG9O
	 sB7CaSHUyT0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E288EC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762224291.20130.5521077055663208566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f614dadd383f26b51dbb133102fc302a439cae40e83bbf3203047b9ffee8ec
Date: Wed, 05 Jun 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717622242
