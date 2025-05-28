Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E3322A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748414394; cv=none; b=OlQxGDO8h9LP2e0Ms6r5JWUhDKzFgwlhZ7tEa9Kp4ALyZ8P4uWH8pR69m2/IBxdrPrJmAijpKHXuDptD5NJwBBZDcTeI1yqOA2GGUKZkD6yZVzvVMUIEhVRxMnX+K4GfzR11IrvsQNAGjEXvi7NutcAcxxTzKSp3TcpatxEc2nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748414394; c=relaxed/simple;
	bh=QTKWGaRs5IE33h9RO2hiK9tW9YwcDRiK3oP/87Z4EOY=;
	h=To:Subject:From:Message-Id:Date; b=UxpIOwhCg7oPH+VA/VTJ25UJ94r+hGvQiA9qi6/C/Ye2XbWoIBJ7Vadt7x6XHzBvotAtFdNn8Z/cb4s1hWeXl7qS6pDrcq07kC1KryW00VKPjKSvJLf0x6qMK9I4oqYLqOnwWtozql1lmcPgrBqhuCfcpluKwJRvRxNB3/fRY8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxXTJY4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxXTJY4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A254FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748414393;
	bh=QTKWGaRs5IE33h9RO2hiK9tW9YwcDRiK3oP/87Z4EOY=;
	h=To:Subject:From:Date:From;
	b=SxXTJY4nyHjZ3oEDgLzo4eWtGJ7N4/8iEpyMezH/RKG+x4xLbS13lr0M7fuc5uaSK
	 71dXFeWiKitTYZSanTH1MtTKDxFznT+PN9dGqkbL6W3fhkQ9PATPjp0gsKqi75Y2r4
	 P+qbOnrVsdoZeeYj9InasvhFw7XbuYGwn7VWNLvSO+k1yAkg7FctEYMRI5zVz3lv1z
	 tiW8q2rkK4JUT2OlIDlVWgfqzWDe2NVLdq1aDyw4zRIAZwVUfXmjOotaJxD7xnc1Nk
	 QG+rNtoX2wPr8yUX+wh9E6QFfOf9gQT/dJzrcJbArkhHGnmlLfUDfa51bl3WTKwH4j
	 u3X/qtRMmPXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025DC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841439358.546.9178086403034885857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5103d4126a818b1b20a10b29dd22a495c8ff76523e531a9c11bb4a98569c961
Date: Wed, 28 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748414393
