Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4B150980
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734526554; cv=none; b=kepbs55E16BB0WGFfxRcJ/0EkhitiBVh7wdlx0uy57Bb8GF9K4RXNsrzH35HSyUMlFAy/EYwoTFOR73CIzj9sI3x4gQ+uw3yQCmt6heRILxvBDNZHIpOfeeZGkcbG1zDIqQyhlSE6BIftExEd7lETepSmT7iRJZSxPqhm6BIx6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734526554; c=relaxed/simple;
	bh=gppDnzPkv0QbKcKom8yBuYVzZzs2hG9LAzFLGv57CJI=;
	h=To:Subject:From:Message-Id:Date; b=mY21JjhSSurAnPWzSmERGVNVRN/dOL1JrHzUOZ0hBKRsZdw9G6pqncfhwFNg1O42BBgX6lM3kXemfGPvKgACZ5++8BO4h+LQ3Md2QdzBre1WAherwh+T+nLGO3Wro6iacBx6lg8kejc2Ys96WZMwzUxXlSVEONn6sRGM+kWie4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4F12+nN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4F12+nN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1158C4CED7
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734526553;
	bh=gppDnzPkv0QbKcKom8yBuYVzZzs2hG9LAzFLGv57CJI=;
	h=To:Subject:From:Date:From;
	b=R4F12+nNwjsmX/3z3WhVfAW4M0OYkNVRjGY9O7LaQzGnA+3PUiihwf8ZEruh1hgHh
	 Iov2AUZzP5RgGoo7nuut0Ou4XzJZYhm3lMotknS7QIgtDzGB+ou7gd3tiiRZBfJYaZ
	 JUC0maTK681jKKym0Q2rYOlPGAdjuD+vI2jk8gZv0PFmLssE1hsKMZnIK0ruZYgHgo
	 MxPH1zkMHNn6nqeuOEc8TLMW7bq3sj1tW+YAjlXGMUWPPIyr6k0cH1LWpGTL7KXLqv
	 KTk7muD8DfeIvGuvFv8xYz12LClvp0T3qBVp/sI2jIOgoDtRRsLywCb122mQdfLkRC
	 xKERPex/Ii0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F3E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452655357.25013.4170778685202523162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177aac6811d2fcc4639fefe93bf5446240ed537fe4b5fa2437be4bd03a92d26c
Date: Wed, 18 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734526553
