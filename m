Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2523D6CD4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777313854; cv=none; b=J+f8TidchbHCsKhfOeTR2iWsJ8EqWd1QGcXhMIpsn8L8iBZU6qd6qR8EMIIDwf/M5K+GGHR+TcKVIHOcje3zXwn5o8nWRmX7xYJ12ZOhX2yNHnoOM/UrZyqEUGk3sN7JiZO/nXICwIRhOcqaKYEOWDQPJq0bJjUxFu1xliv36C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777313854; c=relaxed/simple;
	bh=zZ0JmqIj0Pl8PKFTHjCWC31LeBLL2yeTxOek0CQwWpM=;
	h=To:Subject:From:Message-Id:Date; b=lRkg9f/XOgt35M3bi0k0GXG4Wq11Y1VKIGKoj7t6vnVN3UZTdq/UFAAnnDLcWAN4IXab1rU8YCaZWfppPemTBQY/uVVxQXw45GldTTcBwjAVfRSTxf0uzjqIj6HFPlOw3YUlV3UjHhc9w/LiWj8SEpJ1ZbpIZ1Tj/uRn5HRY6GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qf2uUfE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qf2uUfE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D43C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777313853;
	bh=zZ0JmqIj0Pl8PKFTHjCWC31LeBLL2yeTxOek0CQwWpM=;
	h=To:Subject:From:Date:From;
	b=Qf2uUfE+806lVtkLV1ZbPfFY0mgDVp+4zaB3YIVmoZMWPs1mVeudxBRejlUQZOTVZ
	 ixXXxRutWr8cKn7/DB85AMs5FgXAJ1dZ1ilMk1DXsJdGUWR2K0TnuBmBFULYA5v3hW
	 NdgZ/RktTShmiPIF92yGxStL9/oNTQva27fqdHfHvDcbam58AM6+BaZCeVUfzq5isK
	 xa9aDtAVnMd9Fv0QQVdHmEewBtQBoha2QiubfeUPs0Ny9PahS2m8oiTCc35NN5j7DB
	 FRRh1U39qusGgIoK+AkFUK6p0A2r9FFTQeJKW/j2uLbQ+l0aro4Ibpli7QDTLodNsV
	 BzQHiqV1HiW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BDFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731385368.31234.12834381917917395189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62478a77faf6292252384fb1f069abad4c824b4ee105450074f5c8ebd6722387
Date: Mon, 27 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777313853
