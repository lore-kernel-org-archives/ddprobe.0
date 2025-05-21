Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9CC2BCF71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747861793; cv=none; b=g4U8UWr349kz7UyOnvohO+b3YBl5x/CQT1Gc2A3CsztYbbSPfBw7IgfhQuYcbV43j7XSUiR+7OkT64PjI3WfHQfo+yZ6BzlnTurwVGKgYhaNQ2YOVt8QbsLAU+DtiVa2gj2cq54cJjbBPwm2Gi2o+NSPrF4L96UuH2RVLSpcY9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747861793; c=relaxed/simple;
	bh=Qg8ZNNXtSFSumV5aCt9O+2O5lj0Zfk7+3JpGYIgq/1I=;
	h=To:Subject:From:Message-Id:Date; b=Btr4JLPLIp5IxgmzKPQQIwshfAWLQUwnx/z/WUuE/+L0ikUdWZoRJzXNO2+MMjXrsmf7TE1k9Qzxt71BLygLqO+4icfxFTU++9IVFXZOPxxZ2sWsN9cwZEukUN4zStjnexxVlKggAJ5DpMeRLBXpUxZTzwbt9oZuoGH/QWqZIgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqeVZKVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqeVZKVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F7C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747861793;
	bh=Qg8ZNNXtSFSumV5aCt9O+2O5lj0Zfk7+3JpGYIgq/1I=;
	h=To:Subject:From:Date:From;
	b=jqeVZKVlhrR+HMirOsyGufpPJBnKltKNB3q03gmcb26ouxYp+tR3niMEowmMXTgDc
	 yEPAiZO/J96KM8sm311CGMXiICon8qOrZ9qQXgXCa3JY05agq7d3ldfK5ep1bruBrE
	 BkI9CNLKFpxjM19GjOuInIBCko2hIAbY/Lmf0NX0MhRwKsk38Ko49j5h9orJf15UN8
	 N32UCxgLyB8szwkmxf5g6A1w1myPGUetTo/0m2ZormgcDqnVkn/sXGQWaHceNS19yc
	 PAZMe3k1i1tYm8StklZmisOItx13MSz2JbDigNcHzHpkWlQgPYydtYtGDKVUFruxiF
	 DsX607Ij51Gpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92543C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786179359.18120.14567548043722825324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1195123c5d46a75c3f1cb62bf147877d01967c85748dafa4974515216ad675b9
Date: Wed, 21 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747861793
