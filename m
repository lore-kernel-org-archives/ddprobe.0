Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB4418A6DF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749828594; cv=none; b=aRc1kijryR+t36ay1g16OuxOZlFPtdWfM148jvXKxDRXfZYFT87n7rMdMIw/Rx9KN3aiKgh3bjDebmDrFEdYgVHD0BEqhYxu1+0Id+q+Ago23lR/KDhUu1Ped6eahUZn6jA9GcbA6CitOU4vCyy1ynAG+iHkto3cfpZPao/cS8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749828594; c=relaxed/simple;
	bh=ep6sOY+9hFcuX8VU322335f6DFhvF8FDXJae7QZa6d4=;
	h=To:Subject:From:Message-Id:Date; b=alJCRRsbhFEk27/PpinitRdLeyqy/XqkN32bnKlNaIZv21O9FIRRY7X4msRdyxdhHu7zAtwL4pScNk7xdbiwCr7MHVII+8oSPDdDTHDNKtYs/KUcYTUzTbemB4Vfy5aLtn4u4gntaKF6t1vanfeAD1U+WbfANL5Jq+OjCKHNJKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1Jl7SzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1Jl7SzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A3BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749828593;
	bh=ep6sOY+9hFcuX8VU322335f6DFhvF8FDXJae7QZa6d4=;
	h=To:Subject:From:Date:From;
	b=I1Jl7SzNsP1kkZVLGnMbGK4acn1Fc1Ak3qU9wM5gN0pm+YV83eYxB5R9W3r/oHTvU
	 npbGIk3qxrVRTmeb1xIgRn9/ayfoAR7mLeoRe/9VpM9Gey+BqlogkibsnDeq6tU6aB
	 PbRxLiBZYsHQ+GYmeY/7nTmO7vZCeBa2Nomovv8Fke//IQdCAjNbg3IbX6IbmrnlAq
	 /stEy4S+pvTIUr8397EfDhqDvm/IirxGJDgYMHkdLoCbzXepDTPZKAzcktnQB/3TRa
	 yvS5ThM0ZqDFd5w4KzyxdBdoGzvvKnx1BEM7vkaLmGG2f8MxEIXXc9X2XzjoE+XTHp
	 LZpDiLUN0Q2fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155BC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982859358.29431.14595406654539900658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ab3ac31ed392caaefabaa4cb87a9af996d1bac1ada872062ce570377034e48
Date: Fri, 13 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749828593
