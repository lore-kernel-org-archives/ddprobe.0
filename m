Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B8728B3E7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766412834; cv=none; b=XWF/U3yLDc22z1zXQGxMU7R8MYStB3gaPliFgRA8URg6puvi3FYRRgcHEFuwxZdk/Rhb3g9eI9YygFoyZpJHNXn3xLJRYA4u6KR3SwYl2pmVdI2C3LBIqhvtrglBzw5sxM05B9SoNlh98EowWrpuzOZZyLpOW0kmDU6H/glCEzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766412834; c=relaxed/simple;
	bh=Ar7CGh5VAtOoFa9VmjCXGr3akuDl4D7pww8IIRL+osU=;
	h=To:Subject:From:Message-Id:Date; b=QYC4gx2yCVZ9Pv6dgUuf/p3gCw7AFE5muXIEIwbjvXKGBLwNNI+g8VcC8UU1/quIJPXkwp+HAAJ3wZwZ96lm50cHKmSzU3qPQ3HBi2gl/yTS+yEtZ4oYLnfJgcvYnEFXOeI0IIz0/bBEKzCHRHbZu4EpZ7zhV0wO/mfv4gQbtgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aquwGxSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aquwGxSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDCC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766412833;
	bh=Ar7CGh5VAtOoFa9VmjCXGr3akuDl4D7pww8IIRL+osU=;
	h=To:Subject:From:Date:From;
	b=aquwGxSwNLEDnueDhDor2T1N9Fkk4Wz8EjoL/8V0gq7O05yaL7bm3UVrFyMhhy9VF
	 0YnChqQhvKKfmlSzlITEjqHHFTzCw2lwD5p4oqK/xOT/tp+9ogQ76qz9J8WANLsUqq
	 5Q+kkh+mpHYihiVolv8yUJpPzBG8i8uTTnJiVw7H7IuEGSUJsdkyqgCkD9anVJ9G9B
	 tQE6vKGT34dtLjfar/MAgeLlOtr69IiWjXC1lXntTJwdiN9fhkJPzhU5XKrYMQbCns
	 7deDyI1pvuIjvCWQx6f0clks1wbTPKt8NblK7N/Mp+SCPspV61sbkYzCS5X5GuwK5q
	 hlKk10rUbqmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80AE674B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641283357.11744.280433536858593450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55b65b52ea27cddd859c840ff33fc2255185082e6028b928c6c3754526d6b04
Date: Mon, 22 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766412833
