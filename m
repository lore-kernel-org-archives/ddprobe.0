Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439DC1096F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787702434; cv=none; b=RS3vLuNuhU9oX0UtHUzIImrU3x5CMGudBQFOSiMjPV3DFIjPxuE11r/AMWiEHcPiwAAoAEd7dSOu5/YxaNOt4U9572ypADn121Df7FepEPf3NqYO/3H7WEqPDNEfWlPmeimvuDJIh6Xj/+EfA478OxfEnSlIcQIE+gHA2kNJ1SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787702434; c=relaxed/simple;
	bh=Rg5LBkFeXleGvbKnIUOILS7rr3rP52tf4FzLLpEWmSM=;
	h=To:Subject:From:Message-Id:Date; b=aYDOLOS4zZSR3OH+ZUi9k4i7HcDD5F82dpPXd5PlMFOdiBqn4bR+/x2CKEckectkJH+RGdLOoo3ybmZ7IgAQVmKHsm/ZpS1qzQfOZa86ldwFrZv0sZh3K0oW/5bS0fIxjWNtZOAKDLcpXKFy7FySsPD2ZuBkKDkFADWtvzg6Jkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eih+eZuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eih+eZuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1417C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787702433;
	bh=Rg5LBkFeXleGvbKnIUOILS7rr3rP52tf4FzLLpEWmSM=;
	h=To:Subject:From:Date:From;
	b=Eih+eZuLKZ57CeJoTW3V3AZYs1nHaycdho361r/ANxzQj/SVM84gtBj5FnXrHJM9P
	 /j/uc18EZlhuyM9M7oEZENPr9dCO70LAwMXjKjOYRLenFeDjOLsx+jiOQEeIb4YKcY
	 EuOu5sj1lcebyxIZY/IFmwNNNmVi4Z0JVyoHKeqs/UmxAZPLRUn88g5EptIBcUIZVi
	 ffGDtVuR4KUKeVztyGFEqAXOZw8h6OJOJrVcymoUd8XyUDqlbwhtP+W0tVJBNCPj7y
	 dF93iOG8pXNe/6nkk6z5RfGinmZ9420zlkkMIz4S1ov+/dJO4EpxSRXvBdlw8tZos1
	 g+xlCkE+RNzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA419C61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770243371.24396.3156784530827261356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c4f6ce4fdf7e20ed72bdef26ad6ae308ea24eb70fb690d5b56320356066423
Date: Wed, 26 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787702433
