Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44737227B95
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766673834; cv=none; b=KMHU9iBeUnyz6mBby/pH/WYPGdBY3q09ee/Z6OWop9bIC86lma0v34rHOzQ4jHVuDSML3+q79Zu4ZTk5OLDxFKZvU3tYnC1sYPtKJoVgZOA+bCaAiJ+fszJNKyoxT1zVKvUpo1gGzMAIAeU7ZmttcdUKbz9b8m7RMjXDaGE4+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766673834; c=relaxed/simple;
	bh=gGaP242k1Vu8ZxBwgznAj+UWXmtLd/3Tiu2suTj7l9I=;
	h=To:Subject:From:Message-Id:Date; b=cmidokn+CdaB3NO+rWjjW+2gGrDkisrrm0rSqE/kJ+NAuTS4LkGKwyJQ130SZGAzyMP3R8tzRnVHBWVZvqt2IxqM6EbEUuTE/C+Dy+02lWvRjPwGE1EeUXy5SROfIE7cM8o6m0+H00l4xaXRwSLScwtaw/XSXWIfTpp5AZJWLX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIUpyL+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIUpyL+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7569C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766673833;
	bh=gGaP242k1Vu8ZxBwgznAj+UWXmtLd/3Tiu2suTj7l9I=;
	h=To:Subject:From:Date:From;
	b=XIUpyL+fSO0h/tQ8vHD+XjkD4cNH0bZxJmjBaHfapnFky4/zAMDO2cV+gvin7/cVR
	 Hb1/TBEXq6h7hGoY1FuO1mwg+P3k6pHB6DdBHMqDRUoi9G7zMZbCHPN9j6qeh4uV98
	 vdDlCQLeZUSP1cWQ8ErsyHrF+CUuCaalfUEXnY2J+hg/CEo/QEUAHCh8E8oH77y2uH
	 8AUsn80ygVxocpsB8f4Xclg9iPmFMHXD5kwTQGrTWJylwhqYy82hkOYqJpYx3ifXFh
	 KqbQEwfdMp2uBOHMt1jaaNVsXfFE7RJDJK5XflIdCEpkM/gCuVbySftESBRC2XAQqk
	 LZVlzrwU7IxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9091CE7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667383358.18330.14892440513071902138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d18b47b8a6a7280c3de28985ddbc94a35cc025cbe6549f595cb946b970e530
Date: Thu, 25 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766673833
