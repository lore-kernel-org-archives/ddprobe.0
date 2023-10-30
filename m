Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4023F650
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM0K0qGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698628096;
	bh=Eu2UP4UQ/QoBpJI+U42Ne9OdmqQAJ+PsKGngb5rP5ug=;
	h=To:Subject:From:Date:From;
	b=FM0K0qGrfsOgVUEZrf/M/IRrdK41IeLqwJ/81jJyQfiYmIcC3kVdstrI/5yQkviI4
	 +OLAxoQ1JD3QNb9BYpRCj1eyQiw/x/GPBIERclnqtr/9xck5A9XLY/uNMF9F2dHx2L
	 9BIVyhkufkWaD5knB235fn6izOUc2dFgR//655//gMAeytXHElEFpxOuLs5VzSOTBS
	 sa3F+3Gh+XIBYGdMENLRjHCuVWKdEtSLxyrqZa4LoQATPb8aAj/Gw3sXE1h8KSDfIE
	 y3/qpycoVUWtJrF9X09DHJZZTQyuJqHH3+t4zza7AQhOLw7xURVqhR0vXSailh+yCr
	 k9xM46KSvOy7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A22AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169862809646.2047.15317695312269622356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2741946b4771d3ea4801827e5f2b4d0903f4d4faca6e2fe420bf4a0eee5d9ddc
Date: Mon, 30 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698628096
