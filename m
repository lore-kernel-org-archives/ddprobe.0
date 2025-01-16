Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF7F1DE8A2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737032754; cv=none; b=aBgpi5VslLS7yS/biwqgJkH+gP2VFxo3B56Z/nVOQvQGpmuDvg+wE4Z6q5ir7S5e8Qf/q/qV3XccDXd3t+6uO/VgLLdq4GPgpgpsJKuEhohWYW69OYqDpSOnK6RNI/sX1QqLFFxZS8vw4UtxWgzAYdhEyS5G1a/y+8jgExNjDZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737032754; c=relaxed/simple;
	bh=VN1AszJ1fIlyO8TCFIrl3TfqrQjchHob0p/+2FcwBDI=;
	h=To:Subject:From:Message-Id:Date; b=M36faWlmuestblJSi+0GqpR1e5U43As1+hg/p5FvCJnO4RUkOTZCLnEQU9KuP5pRn+l1nxuJzxnFrfZ6nbFISc1k5dLxQqtpMjaPJux9aZzlVOyP++dcAcR2zXXfyvuYuEUcBeDWmGQusKjAd29+mgkJWZHX+lChJuv5NRjDrQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5TK1IHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5TK1IHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A70C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737032753;
	bh=VN1AszJ1fIlyO8TCFIrl3TfqrQjchHob0p/+2FcwBDI=;
	h=To:Subject:From:Date:From;
	b=V5TK1IHzFvGUZ8vcfCgaCcBYu4DEytwY6Dkn6g+oxRG1SnIBKbf/bEkpxRJSxp/CR
	 Npy9B2R/p9D9BqJ4w79s0vshRVnBiBgH4VFrH1qLZhfCOcXt+HthuvH+RdcwxnyY7G
	 JcbLZ0SQpD/fFLEy8yHuxuOdECLh6VGi6PvBuL5CUcIx0OouDnDD5WgHoQobalFTOU
	 /5mEClgh/3VkJs/inEkmA89rjsASCp8syS5o3MwoWkp9SsGjpH/5Szw1+Upm2Kb9VH
	 g8watnINsVX+BtBqcTLGJpo+XU25ap25KSDtIHixnAxvt7nMA4udHvWn8HZFVe3JSH
	 yF9I673H8X0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8BC02187
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703275358.23544.18015640609790650189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8891c9a30a61131ccebe93267357c00180028cf524201dceadd0819e0ca5ea8
Date: Thu, 16 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737032753
