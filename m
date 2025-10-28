Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132B533F8DA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670794; cv=none; b=KmyxC78mJGIx6l1b50F8N/McnQA637HdddIrZAb6UAWCFH9a+Du80s4rtpeZvWqHl9PVV/6QoBQtkiitDWnJ9tPgUQtbvlvg1CndznwSjBEZlqFUDlAuqGcuCV6YosBHkHpxZx4Cy45F81VUmaXX5RNUup4bvX47B3scKot6jAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670794; c=relaxed/simple;
	bh=HK5QrAbTolBj9+Np+WjkFSrruTJZGcAp6jlvkf7xhxs=;
	h=To:Subject:From:Message-Id:Date; b=j4m5SfljtDmToO/q0pyhmtA7z6iabo2nK4g2dcifXBNPMY/6eeDGkTnGvjXeqUDg4HMCio3QBwm7I+eGMxTQP6G6us5NJCoT13cGr4XwbDEN4vg9j+rh6nrKAEq7UjSvfXzIJdLx+r80+AlFZRz/+VMFKW6qyetV1gXBPtrEIzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdQAIuj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdQAIuj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1076C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761670793;
	bh=HK5QrAbTolBj9+Np+WjkFSrruTJZGcAp6jlvkf7xhxs=;
	h=To:Subject:From:Date:From;
	b=VdQAIuj2Udr19YQh+ngCYS49t5WSBayG4G3zE6UvB9SX4SKHBJ4OGSXYVJZhijiZM
	 xvw7YNSAysa74yY/qd3r25xBLBcs8ifSw1w28aZIIym2jZPENWECfaMeRp+Q2iafPn
	 5I2O/mCuHGjwWfDPcR+J4JEAFJH8uGOpqnJV6QYXBu4Vq0rnaJSgCEqHKYHc/4Ushm
	 /FOb1n11BSMJ/Siko9DENhwg2D9OwL2HmO+m9Ffq05fGuOAByxT/HdYAq5oNqJhL0o
	 2VzZA9IgBOxvQcj0ATo9OYsGE4LutLsPztSqznvRz1ca+zoKdJMDba4JIvsvpDJqSR
	 02jLundAGJ+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D05CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167079358.9223.13352797746196033249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b78624706d72943cc928368a4e2950c0692dc3f0296dd52941182a45a47e9e5
Date: Tue, 28 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761670793
