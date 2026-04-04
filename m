Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BD2798F8
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775303134; cv=none; b=QN+okc+sbV9/jniibhLUhPyIKnHi6IRs1pl5AVtaj1ZL9Om1ezD4SPIQUJHwBcPaISoH/ex5/y2ogPR3HTUiuFLqeV7N5AqSavYgfg4EIphvnMz8nvJcMon0sX1EVgCZa5U9DpulrcDXi0evBjo/lvIw06wE+K/KtXsEnQFM9gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775303134; c=relaxed/simple;
	bh=tl4wYlVDs7G9IxK6F9QneoNnYAD4cwqeizRZnBfKrR8=;
	h=To:Subject:From:Message-Id:Date; b=UZ9yLEPp6YlQlvyq4eDDAbJ9JFIKvphWx/Yhzyiq1Mbkq9Bvefyv0XjG4Sq26+KWuf+16vTowmX6xsHPlH6MBwsTKzTKfVHosHEQrpwUF75ulKtWKvlQSMxdLnNItJxeTAiSJQTf8QyqsB1E6KNNyH9txyae4uRL+LN3D/I4SsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5XwezFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5XwezFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AF1C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775303133;
	bh=tl4wYlVDs7G9IxK6F9QneoNnYAD4cwqeizRZnBfKrR8=;
	h=To:Subject:From:Date:From;
	b=n5XwezFbbIGy0mRBvqO4FhS1l0XlSzRWWC5DdpYF6wtq0D2Yg4ljvtmIRSTrkBzoj
	 lpo6I8KxEJ4uhANeqXjgSwZA1wlzK7l3zKU847LEQrR+miiyS6DURiTnAqagYbwilJ
	 wDydy6GTIhU3NQxgcFfYrVTiQnml5Kemu8XizgOIxA0UIWOYMzSrzOPlalp5/n2+DC
	 ZNB5R5EVXfhAtRvkk9aNFm+7AoHZPNHeae1+0UBaRW/Hzz23JbHUbyqN84BK+4WGAT
	 tr1xF1pKj8NM4waBITHsImQqKUYTC8fpHbiak3Uo3d4oxz2BT8qGMDGNGn6HmDJCNh
	 3YQ7kVWGJT2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82AE88D80
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530313369.31274.15484971697379420565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91880700046eb10283275bc3c2fe079eb8d1642d8d132ab16a5cc6d18ad9470
Date: Sat, 04 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775303133
