Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437A12E11C3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749964794; cv=none; b=JB7BsIreV5wUlpoBugNTToI6h1YYRiHP9vacXurp6XJLupO4Uvybs8LevK9Bx2apZrs5XnpDDaFmPMNJQnb9Fpm5Er/YUYN2W8r50h1wEY+Syj99FPmelRAlaGhjnB7AOWy41MV5J71hT7+F+TuoBLKde83CVt6L/VxL1DRkCqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749964794; c=relaxed/simple;
	bh=LvPc8+5c2q3Ky9sRq3SAgR/ye54ZlTyV5WEQYQF6b/M=;
	h=To:Subject:From:Message-Id:Date; b=NohO6+CtICEi/WrHA3hjZlvhljqDuv8IPxPR90vWeA+QI3ElKqRUduWZLMSAwo1jLRrGIeippegFpuxL4xLm1hgO7C0P/tfJLGuJncPNWpqVvBJn/b8ybUY4+ZeBe8CJV3dliyKgstzAJcexzJBiUMMLGczyK8GHHSbG9iPWnNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hb0rIuO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hb0rIuO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B51C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749964793;
	bh=LvPc8+5c2q3Ky9sRq3SAgR/ye54ZlTyV5WEQYQF6b/M=;
	h=To:Subject:From:Date:From;
	b=hb0rIuO0VTyUzTGekD6/t2I1yQ5a/FcwT2Q6npO+BucuU1oc49Rw0aoqwlXsCg+fB
	 /LSF/SxBQx0GQ87kJ/cTwE6QDWd0O3funx5H0j/kVK6zpLgrK+KOARMKupT61H8Z8B
	 nohHajJbXg9L6KQrGCYUo4ZNmVHWxaZE1T97lVK0iZItPOgyv8jLysS/+hFdAGm581
	 kJDzxzDckukjyEO2CuUgERjjHnvKTvrPFRcbb2W6vEXLkfisdsBWTNE4gSrUW3VNHQ
	 MrrkjiNB3GaSqgAZrNqNPIL+92fN5SSk+32W1atJeQluO7N5u8GGHaqpC4OEBQqg5+
	 4NabSiB/WfW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93558C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996479358.30061.16389945293948093807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79af7767551f259abf2696143f1855c3fa429fbc97d99010f9c4e5a7028bd1e7
Date: Sun, 15 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749964793
