Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6323DE454
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774348494; cv=none; b=Fj5oNf3eD/NVg2Yw/OvUM44ws3b1Fw7v/XYIyirAkA4V8E5IT2eWEhNDAMnR18mMkeTt5BrX1t+UgHN9AVHDYtkIAWEuAkoOADdvMU/r9Vooey2IDaT+VDrcOJlv+NiDAVvREq5QgjoG0O9uVpuCAXc45sGxyAoUUqSNtvvUqyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774348494; c=relaxed/simple;
	bh=SWrFfExQGT8NLrx/c8eDZxWdTEqHJU/qHYwOENcnoJU=;
	h=To:Subject:From:Message-Id:Date; b=VYNs+pItjXibDZGydlXUtNgbik8+pR7dSpSB7Z0s+E2f46TlbFpiRZ+HP6kLyoKIgYHfXBqtGG/uzwcZTMMIxwqOLWnSon17i9DGHWF5WryhJRyzRM7OySdfv4rbGFejeMj2BzPLaVIvAS6Q/jleXmXpZmsg4iEM+O8PyQsaOls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjlYUcfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjlYUcfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA1C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774348493;
	bh=SWrFfExQGT8NLrx/c8eDZxWdTEqHJU/qHYwOENcnoJU=;
	h=To:Subject:From:Date:From;
	b=RjlYUcfOtqA3cZ82YwJ4jSiCaI6nd6GdH/m644yp7TFT5AiOF9+HA8cVNUtDzpgxU
	 /iOE8aId44sliW1deu+TelDWyLAHSUyWjLmZ7g/8TQXmrozqdJRQcIJSVbK2yTP6uU
	 4Q2VdCz0LRRBAQTrAt/a1/osoctG3wh6uh26pRiekJFkvHrCJFWwaUshiiGboqqUI+
	 spnaw4rKHNp4QcBV9A4ZfmYCZxGKTcrEoUfAcUeYSS+snOzrC6iWXs09ErShMmnoFp
	 hSb5O3Aiwgn2e+v5PzaJEcO9xyy+YSNvroJknAQYJ3h2LFRsKTHHtV/FY/JTw8VwjR
	 ixCmurX9z+BbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F985E9A75A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434849358.7831.4326131670393199151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bfa99c4a945a5b205754006f9139d8ade5aca7eb1a82170069c678ab491ee1
Date: Tue, 24 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774348493
