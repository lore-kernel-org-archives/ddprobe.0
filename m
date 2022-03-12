Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36DB36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647076884;
	h=To:Subject:From:Message-Id:Date;
	bh=2X7qvlYoFBcY5OG/mKU1NLvak8wsCNObfUjJra/z4gI=;
	b=L6Jf66or3Hk0okvJVxs33N2n+2mhFpWC2m4URQ7aPOzZ32DKk+W+CUaTvF8v8+Jc
	zOFC5ksGLpMB8vKkR/hYnV9bmnhAmF5zx+VGAo4gpi+UJrqPNYHnHGGz4ovWviB8TgR
	QamSc2BiVtrvQsLKi4tM5KqOEgayP2BuWAIAbrVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647076884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2X7qvlYoFBcY5OG/mKU1NLvak8wsCNObfUjJra/z4gI=;
	b=THp6MH+xkxmJ/qnSekQbkIqytVaSredvjQKwQd0MFeBFnonLuhzBXa0AZ4DZ5Oqu
	kPG3WhEwCitmEruO3/ja/PQVJVLFLwCouJqgz3RW6lnKIitoutG6y4aPQtNQ7G7NnIc
	eeBF2L6dHZCX5B0EAhgzzl04GFhDrUKPr4w5jRS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d6ec11a-d134ae57-0aec-42e6-897c-6cd05bd649c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bfbbe5eaa5aa0c3e8f0befed57c8a6e0e5d054bc4a96b63da22b8aafdcb89f6
Date: Sat, 12 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647076884
