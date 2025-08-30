Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288E4257453
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756544994; cv=none; b=QFIt9ECA5kpKIzNOUCA4jI/nnjXago+uY74CB484/uyOPctHddi8Jwghga83DWTbqmAA86CFFaZnJscxX4SWQqJIWJgb7jNBuT8IWGk0YwGF9Z/Osvwwbub0JCpxM7P9wr/dDf6/x7bollV3eIEfi8I8wDw6g2nY5CXngEApweQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756544994; c=relaxed/simple;
	bh=ZngGmXRxJ4ZlUR5Fp23k2YuEhB3L3C5uKJoSG4qU4Js=;
	h=To:Subject:From:Message-Id:Date; b=amIClQD9CxQTdGwJ/+2++kjT8wdNOOpfmh7/8VzgBCKJq0Shm3V32KC3vyYqm6fEpmUBNkYpWQl1u3oAynWjPIkEq++c9ueD9sdUVqQLeByFMrTpICt09U15ka9dplZmkNmpkVUC0H9SeJR1HXZLT3k5J/xUcFD/H65EZ82z8UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCkjUpUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCkjUpUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A49C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756544993;
	bh=ZngGmXRxJ4ZlUR5Fp23k2YuEhB3L3C5uKJoSG4qU4Js=;
	h=To:Subject:From:Date:From;
	b=nCkjUpUb2uNOkhTrx0TSZsWUMTKNmQPIy9ZZ3/MhtTVHr8GApi73JxMk7Fo6Lhu+C
	 +3YlOja/4B30Rkh+MYUQVd5gAJnw7r21O/au++N+vkZR8qA8AXthm1Tqr3+KZsEMpY
	 njXiR5AAPwOQASdNDlrBCPlleHcYWyeD80ySRUvgLXgxZxLodcA4DWd3xY6QGyfD+S
	 R44xLAFVgLp91pxJ2yZ03bJSaH53K74ooMf32ipn6XCIIWuqtBaK9rVnrMNj2QIjcL
	 82ozyEjDpnVsCODuYKD5nr5ZQ/6r1Pp5i/UEdGRslLxOUJCrM1oXMqJRseotpHPu0y
	 C4dfUT2Tt53lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F721CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654499357.8891.417977925863033537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fef1a302d80ee3a05665c5a0f3cb1ecd6cefcdd44192a5a26666c7700878b7d
Date: Sat, 30 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756544993
