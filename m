Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6003364929
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774934693; cv=none; b=Yc6DZcd9ArrEPtMXR8m4yMQV5Qs0WLVEC7QLy6PI8ZgSBjmi5dFSI/feTJNlb348yCpr1RsXvUL5fU3svZcApDgbVeVhXnPxfbOiEejNV5c1n7pb3i7Tkma0v5oZQvPMbqEmeGNI+c8S9zt/h0Y+ufOYekGIGm5gIXrhR+sgCYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774934693; c=relaxed/simple;
	bh=MAAkHan6LODELj1DDH4pXgRW+NuUvtOJLnbyxyT1pDE=;
	h=To:Subject:From:Message-Id:Date; b=gvdPCbyTBZAejga68YAIUKb3WlHhxoQo+FnGnQy3wdsLeHVxBj4lGENRg7z6IkblU0lEyYcNr9gkNA643Hh/e/PalEIlYZVWuaGB4J84bTps04dM/61QqkF3YalO6aFO1WZresyaeZ/zpjqDSU9oobveFa76dRUhdiETx8nyHVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQoqYilV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQoqYilV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD75C19424
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774934693;
	bh=MAAkHan6LODELj1DDH4pXgRW+NuUvtOJLnbyxyT1pDE=;
	h=To:Subject:From:Date:From;
	b=AQoqYilVn0pG6yNMEcQQ71Q0bm7X+iwQhB2HgQiGg/CWjtj9W7cBZ0xZPGftUZkNO
	 ktkfymsWrRH98CiQWQxE7eOq+z5q49fGyJURpAPsIYSgUBCpKJQrMzMR1poTYqAG1w
	 31LFXQYKYYiJCJ+zt6v9xzRKTaD1SoJyGddxo44Lxe0kY692+Vh0SIB4Ct1Tqu2SI+
	 dMs7Jog9PeAddLEifDhJpXB5kWpFQIdQmsO9kO+3GdQ0EnFohoGVIst9aDNyqJG0+f
	 nNNCQRPuRqLc6lxYIUVpNCn+vC/xIY3abqTZNbm18heTFXdj/+YPDl4QSW5QaBYBWs
	 202/2uEqKHi2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94151FF60C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493469358.12309.8973028625357498984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf0ad1d6b8f1c354b2eb24db3a846faca6e07092680ad0f89285b407aaa7c87
Date: Tue, 31 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774934693
