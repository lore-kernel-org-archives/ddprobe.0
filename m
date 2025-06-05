Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A101D2F42
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749100794; cv=none; b=g+A1w4tsaxR7sOHzcbaLLMXGB0oUuKycyB/N1dwAbaWuCV6Kh5gohF1fqBEJiw6MKfCJXYQtIQesyGJh+cmJYeTJxYD1qhW1oiDlaf/3H+yjZuLoCV4kvG4mPbgZhshisd9dJQju1qRINLzBk64HnyNOZxhIt+3TMuWnKYH2fZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749100794; c=relaxed/simple;
	bh=TaUle+7d1nZVhlrnCaBtFy2Yhwb4wkb+4usxNqKw4k4=;
	h=To:Subject:From:Message-Id:Date; b=paaJzXbN4MqMc8Gsg6zKwk8Zx8DStLBcDcQTERMP+DjpAo/QzK+7k0Wq2r2LF41yzxB/MVvwZdPiwbmdweSH08TLcgHGJ3DDNO5RGC+0Mi2TFpjJsaqvzxK22pJZ93BZE8ZfD8fgXjTzDumPQi3E8mD5CzKy+5XXE1PzJvp/l1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcGjrsqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcGjrsqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ACC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749100793;
	bh=TaUle+7d1nZVhlrnCaBtFy2Yhwb4wkb+4usxNqKw4k4=;
	h=To:Subject:From:Date:From;
	b=IcGjrsqkkz8/sUoYgEqwTv1rOdtYcH3wghWG0xjUV+aOFdC+i+QNWOX0gRenw1mjM
	 BiroVD53fOvRrxDm+tBSKvku55X+2RQl/Zo5E6EwUJDhYcj0EMc0Eun4nR3g8OZdYP
	 8+8/swy2S2P9DwJOA237mzygFMw8xhP465ovrdaPWmQCCJb1EgO0BDai7VsoGMJXQQ
	 sT1heMPQNivbR/BR4GSvH07O1WXoi2GF5FjlzkzTCOti5FtIBkHcxUbsyyD2tNQEnJ
	 isLpO2M05LaeCPje+XYJVx2hNWjprDl4yXcmlNWzDg/PlzV0DG0jlWeW4Cgt1S+UoV
	 JcrNDsofUQ5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92001C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910079358.7090.11201879284435829683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed0d6f7d02bdbfef38f975d75183b813c7e9b8713acb0399e67d064629cbede
Date: Thu, 05 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749100793
