Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183421D5178
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758585594; cv=none; b=tYKLQ5vTxKqhZw8mdUt7NJ+SBeLlVZsw97uZld7MPQzs0W0nBBCz1jabdQS8ig5CaNFyHuapxKibIn7pC7Q4haFnQPpUWqLntb5pY1tBpKKPJrJ5X6lvrFOhIiDgaQeX20ZAwskLxYWcsaDYUxdEHvHN9JNv7T54Wsi2f6cwm5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758585594; c=relaxed/simple;
	bh=5Z/bmp/k+SZIWufHU4DsYqUa1jHjkiqDypGp8b5y7LE=;
	h=To:Subject:From:Message-Id:Date; b=sYPOdnuJCKkOsm+HojxQsGWurnNywRdkH9YQB/kR+9DBpx/rtCI/Mpp5R5uTmJ+hxqy+2M+JNz8Q5iTmZc8dCG7v9eHSn0KcCsd4YYNnOIcMxLhCVvGzq+sdfn/5iKx9NeHoAsHZuEQGIQdwaZcaU97qrNwWEGGytnw5VgS+xJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHWE14Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHWE14Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758585593;
	bh=5Z/bmp/k+SZIWufHU4DsYqUa1jHjkiqDypGp8b5y7LE=;
	h=To:Subject:From:Date:From;
	b=XHWE14KaHa6m0FBF2Mx2vXoA4KHVU+KGQk4o3Iq4rrP0iXTsqnBhCQ2MGxGqIrn7G
	 rVi+JMyzbqumdC/uqIBh9T2+xYX4Aq4IVcH2aLe4IyFkph2Deoxb+22FTDp2A9DGdb
	 bUkkqsI3k/atLs3JbtcSA7Jls8Vfc0gdOGhxvNGHhNyHNg10OziQBrTkvIr1qKblCR
	 gY2vwGhwuk8W5klPeZLoCcDy+RAQ3ttgab7llNnxZA5YfzLCC9xcrk6itLWpROcd9t
	 dI2q5/A73pWvPoBOBDHgPoRN+mZ2RbC9YOpq3kpkCO3hamx69MqO1NDQkbxtJMQsyL
	 gZXvpZnA8RWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CEDCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858559357.3896.11533175873235363388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2c6652204dd6471f19bc5137b7ec88981292dcf33f649b021e5fead9db3a84
Date: Mon, 22 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758585593
