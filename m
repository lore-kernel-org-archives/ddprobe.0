Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549731B95B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737518754; cv=none; b=IrsTev6f+UTN6Q6ts34zpVImnPWGqHQ0q9+iiPLynnEnRSC1QDUm3j2EhZuQZK5VoGbjkI5Bjxhf8x0JKpn5NNETaFq75edy6eueMzT4YpP4Zn/oB1J4n6bSZr2EriQtUsyjgOwMHgnsThMQpaCjGVCq0TqOBzoH9YMCQv/qHno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737518754; c=relaxed/simple;
	bh=oo+PEFVP9RhK10eILgqjLhw/VEPnAo9yd2QP/LzTwwk=;
	h=To:Subject:From:Message-Id:Date; b=ZdqmUQhYR+JTBHCXiPepQHFx1socHqrUhjo04SfrdSFmyWFK64tWlmLxpmeYGOZo8FzK2pW/blRwABgcfsHygjQcr7EodNUjtMhyAh5x+LmE6ijheAef6E0wyopOlhG5PUSPy2sHz7Eg+Q94NdyFkc3w3Zy2wTi99Wr9gZ0I2R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv9XC+4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv9XC+4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEEAC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737518753;
	bh=oo+PEFVP9RhK10eILgqjLhw/VEPnAo9yd2QP/LzTwwk=;
	h=To:Subject:From:Date:From;
	b=pv9XC+4Ti7+pkrD4jUQ97T4FgdZUpv3W49Nwg2JrZobSi37Q3u3R8Xa8NY9LeR6nt
	 T5M4wNf+ON+wM1AZ6iJlJRRatioFvYpYnXEcj4mcoEo/0rMdRtG1Dueff7E243Adk7
	 sBDm0LSt+eO2fYvZrwPixymWYFpPyDPuduYOH93JQFvULnaTotCmWBTv1o2VejEtuH
	 ZJQc6bjuo8iomPqQG7wB/YdlkmhnzAuKc7W8aUHw9WZD0NqK4OwiaCI1Pt0CSCsUTe
	 Bo+3nasU0LBYvOzjxddNO2AzY21TYuydw85kiBGfe0R+0cGdTWV0vNVSCi30DTHQN1
	 WS2PIPRHSQdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F4C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751875359.25782.12173387527409349862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27175122079e1fe3e14290d190120805176b96767c369ef2975eeb9dea80f8bd
Date: Wed, 22 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737518753
