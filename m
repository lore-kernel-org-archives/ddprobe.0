Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED446BF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751424594; cv=none; b=CJv7j7ZOWdEDpmkSpm29FggSj+1N+WlYQP/3m+kAZNPU9nNt18M93mMHXsMQI1Imp9m5ef1ptLsMnpc+He+pDHNJIg3d73J8Y8SQHMsSdCbGumgLD47WqeCGYhCkDPjt7oMLfSamkR/r/xQzyjKsdu227aoFKYn6al9kybQQY4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751424594; c=relaxed/simple;
	bh=ZDOaZ8zPqLcRmpifBj6/HkONLpvuWhTshxb1E9Dc4P0=;
	h=To:Subject:From:Message-Id:Date; b=cpkkZ/38ASgjEMHGRwmUM1Vkl1ipjeb+/+7SzOfCm88hfzVS6qu5So9VAz+d3ZX9MjJHy3Lse4N3F81SGjlXyEUxhVoLEKVTiqzNt1nGzRI0giNlT7GyIXOGeDod9lKbFvGXbzCNMHWrNdU3GwiWJi/yTX/w+PYtvcLBC9/1HgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoVxFXy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoVxFXy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E613C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751424593;
	bh=ZDOaZ8zPqLcRmpifBj6/HkONLpvuWhTshxb1E9Dc4P0=;
	h=To:Subject:From:Date:From;
	b=uoVxFXy0VbxKi65dCh+wy27hjxiRj4jvAGHgShb2G6K6r2E6Oy53YNrr+HGo8X4ZB
	 T6pJ2fe5JDamgjKuOXGrcduHJmluBprd4kgPPFoFmBDnYbcbGxbD3Fcl00unkW49V3
	 yVOiWq7L8S2VaLuqqJ3csyM/5OJdQFNF8gMa45Of3SETouRayuvjD8q7aLOWjvab8D
	 vZGE13Zbl6aOW1ZrqkaTbrcfJmU1t6w2DfUAAa2JyT9LfWQE3qGaQ4BWIzHn/sFsO0
	 XD2/1uaGBiE28QU3NOdyEVsLBz7iLsRdzqTd4I83Oku/TxUaPWPgdVhm4YqPM95Y6g
	 n5zTdDEAl2hkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7CC8303D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142459358.27358.1538116316946628880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c88b344096824b3927bb970759a752a8d1219f3887c727de4fa970583b5617d
Date: Wed, 02 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751424593
