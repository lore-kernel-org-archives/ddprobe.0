Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344CF221DA6
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742647795; cv=none; b=WqRAip5SSVn96ge4iHtyLZjwZzq69NRs06jDaajB45KZ44zSLHxDcchwqgcVBh8E85HFseFQ5YrybEEuZBg1r2xfqmqg1wZa9c2oHRhlcFH9KVzIYYE4GN6psSJQDvx2OxbQdBFZ/hBkB0MKQZap+aXThbBcTjQCnGJ1Hwqkau0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742647795; c=relaxed/simple;
	bh=nSJuSUOWAV0i5jcyuTp0Qu/7iHA7G0QsOFOJgQaidFQ=;
	h=To:Subject:From:Message-Id:Date; b=GzG3kKgtCFr74lG9SkY/nZUB9j6vIyolg61q1AzxMY960sNh5q2Mq2/T17Yjn6hwVhFpIgdwV3474h/s3sN745AHUZXB4XTtuFcMZ6afPxp5+vQDJzjGUelts1ke8WwbPRBozk24BeGVKEx7IY5oO7LQ/rFajsGVO5bpR6Nf6IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUUbgm9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUUbgm9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE245C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742647793;
	bh=nSJuSUOWAV0i5jcyuTp0Qu/7iHA7G0QsOFOJgQaidFQ=;
	h=To:Subject:From:Date:From;
	b=XUUbgm9NX8MQdbTetfZx8TGizp3bi+PS69DKUXCNmJzdt5Ux8WV0V9BBQbxyzmX4l
	 8RL1f1lrMhnW+UR1+W9pM7M8ObQh1QADA5Paa2ulg9YqbZbHYuMPMU0H7AbPR8IM8k
	 zdfuEycr3+EBUs4je5/vRUz2Dfq4C8TDDNw58ak7S4yM1plvK4xHUmGiuGDebKOrno
	 i7IW5cpUHbkkSBFV6RwTsg6DN5zzlX8JW/Hhxp87YAn8egkPnzO/jNCcLCDDYgllib
	 Wt9Y6vPLk79FFTos84JbyZ9jmhnhAYO/IUHI8nmhxU3ffdSLbc95LJir948+vgOR9Z
	 zMJOsNBR4i53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC50C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264779359.10581.15520830727822062447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf3cb1dcff8bae5c6af183148710b704bb79fa1c5d1d779d10ffcd2c48902f5
Date: Sat, 22 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742647793
