Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389B228C001
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747346994; cv=none; b=ifVavEw462PtIEo2Y4Oq6Z6tKqmxJKhzdDLMRWjsMflLW9ZPJp1mNHk2cae4rtXh5BvEFKnfhRbRAFckl/GCphp6jGkJQj5399DM1nYyp9NVVVHG6Dvy3Gi/FWPLpqf8Gi7Qm9JmgT576r+kEswqxLRRisNkgmTGrAo7IWCQXmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747346994; c=relaxed/simple;
	bh=GbkjxLerwm1I9uxKCQt/CZ9b6Ylan62a04jEAI+uE8s=;
	h=To:Subject:From:Message-Id:Date; b=YkTdQem/mJuDT9UNVdh3ta/TK67oidCp/4crmDV5+lWUbT+qOzJNbR3Kc3A1XdFNS0YyGT94axJrZhJPqr0/zmmkt2WNXmVE50yVrgvQRj96bckDTKgGEyX1K6tPNyQbPBs+TrzoY5M88DEBuzvnMCV2Kry/sPyKcT46q/QbE9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkQ2CyaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkQ2CyaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0411C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747346993;
	bh=GbkjxLerwm1I9uxKCQt/CZ9b6Ylan62a04jEAI+uE8s=;
	h=To:Subject:From:Date:From;
	b=PkQ2CyaAskjyP6iO4nH8h0z2vdNL9mKc44Vj4khN2rhlTdVZRrohtPxrGmLqwQT/i
	 6iQ159ZpAcsz1oih/DFESd6Hx7mMX0bSZl55GiKi6BHU2FzF519HRZMtUSUtnEgX5W
	 +iJP+WbEbMs3fvUXQVMvlj2aZGoNc9Itqs/CLbim7l9lsEBC01YW8y733JClUq823v
	 bjx3+w7VGCKhdv0pgMNv98IVsIJGufyncg89oLnfc1cf5FZxwRJfJ02a5Ws7B0wbD+
	 bFv/jbU/w1Ndu6uB0wciGvzLxZquWgKfK8rmGPHNSpLlhl2dNlJAUiwSEdnsV0maga
	 9vbyaqKfP0BtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA6C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734699358.30214.6493584264652859594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4265efdf274be505e46e8fc6b0509eceebfbefe7fc9961d5ac8f49ef5d29ab
Date: Thu, 15 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747346993
