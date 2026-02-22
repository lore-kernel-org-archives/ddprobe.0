Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2235A26ADC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771736094; cv=none; b=UiARr5vJwW67ZMGbRH2FbS/xFpAc2/ge5rsSQwjeY38MM3D4B14vkQb8iRtv3gdCix9K+0Tv8VUT7mUIzaZL6etG1uegyqpGIKm57wFz39ixt7Nsa+WzwU6vlQlp6Ch+OTZSOktsKRcdETwlXbCpEyHgOMmk5kFVp8ZNqiVNIlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771736094; c=relaxed/simple;
	bh=LanZeYN3r5H72PHuF6XUH2WZh9ErPwZSvQkRo82J+SE=;
	h=To:Subject:From:Message-Id:Date; b=horGGxB1wRv6M9hZp+b5dY4OA2wL1pCgsv/owhncPXUGWNWho3FlYpE3h74IYm68xwrSfVNoQBtDt2+S5wox7pWOucpsVvkK4pBnxbzeIhq3g6+j2RMBQrwoRWQzuX5/pbYmoz/3Mok6SfdGiSCs9/TINYCNyT0dfDpXmZ6YafE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHlfOJyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHlfOJyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FF4C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771736093;
	bh=LanZeYN3r5H72PHuF6XUH2WZh9ErPwZSvQkRo82J+SE=;
	h=To:Subject:From:Date:From;
	b=sHlfOJyjV1puA5tRgoGnPmtDhrzwOCJyF9qFLfMNmkp+GuH9hSQB+FQ9QIqUwYu+d
	 FfTZ5hQ3NZpeHbZRO0GPEaUSNzoZ2OFwIjELztRPZZCN8Y8fIWaNO63kPnqooRj4YG
	 gXRZ44tzYDUscv6BZx2Jlk8I/I9M5/4iR8SE7BTvH6z3KG6FJCbiNUlj60x4ISjE3M
	 +uj4Luk/I3Hd8vH+ByHjqfxVWCvaQrL0o74hdztj6s2wiiPPrwv8TkAfd+UE5nD6Yc
	 EAYGCXZ4ehT0lh2XENgfMHaS96lN6y0SD8N/sg2klIzE92T7LktDR03LPfKrXXP7cU
	 Ez4hc6BxoytSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E44EE9A02C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173609360.25177.6488661497474005638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5651bf7af88484bee55182c24a2751a410bb690b9c0ed659e1cf2374f328c559
Date: Sun, 22 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771736093
