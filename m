Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C2515AADE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 20:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715803343; cv=none; b=fwqsZC8KgTtEOTckR78Rr6iFyvVwb6fB19Vq9jk5K6hY9eG5zK6de3rHbnLl3q/K8WDgGcLlUlV+0K2XQIkjvt9Ca3yxrqb5mJqm5DAS0uFLIDbhsJfPXz7E884qiXWswIKYpfAvdy+PnO1Brf4xGN9ibdzMD5TQxcv/yx3xu4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715803343; c=relaxed/simple;
	bh=7h3Exsdvzs2gcr8C3z3OYFDEXgtc0gDVlF/+uFQlcWA=;
	h=To:Subject:From:Message-Id:Date; b=beAJFsfGJqWDxOeiY2mzbWFJmZ3EXHdEptLiV2uZRSHFlAIjJXn8yto+e0SGSIA+R5AQGYs6dPCMXLpUvYmIxR7F5yRu/CxZfopU1i+E0MYuCecnQ/l1EyPYihCpdX2SlpjYYwy8C1tm1kFA+/qeSb53jHimcPMj8gQxnsRDDwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWDNznk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWDNznk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20B6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715803342;
	bh=7h3Exsdvzs2gcr8C3z3OYFDEXgtc0gDVlF/+uFQlcWA=;
	h=To:Subject:From:Date:From;
	b=aWDNznk/Z+iDqRk/pAwihKpfiAZJsmM6FBotq8YJzwoJuKCLytPjqJs5q4GpL9Pwu
	 7qud0qz9ASV6Ov2n2G4O9WG0FtrCaL4vGzW/uO4S17m+HFM3yJ1+UmfHDJAG+Q2biw
	 dofSjRvGd0SecW25qsGp7twIDk4GUf6Y35Gclg+zYPrnlVeXN5rG2TbM6QhOO8C+8o
	 cBmlqgclZwvFQLLAlndYiHuyLD9z9X0EBE1F94Ydw4j/WqSQ5nDTRIlhfB81HrSvqI
	 WkPPrDS59bO7HT+QohAJxOsV6zOT3NuMMUBaVazfmhIO3ffRYzd1YT3puly+J5tnz+
	 BvEkyDtjDzbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3010C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171580334279.23379.2046927703276354985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3eb90447e4bda55e107adfd903fc72cb8669ed6fee47ce61fca934311ccd9fe
Date: Wed, 15 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715803342
