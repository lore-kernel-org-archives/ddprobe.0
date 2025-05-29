Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C534C24418E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748561993; cv=none; b=iOZ01l5SOfry/q6vrZIb9pGff0VUaEI0kVVas+zWTwwr6lNOBfvRGNWAAYI+D2nnbZ7GnpBvlEn/He+5fM55D4t7j2/p/xr1dTgIwPD/UIXogCERF76Pw5UU3bJwlKPfu/1En4A5Fv0tbjMrOyghvmJ8U17fgS/QS7yjRRiY5Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748561993; c=relaxed/simple;
	bh=v08XxCZgzv+Dn9Sm4lWm49wlHOhcxKq1IinvRVzNY3w=;
	h=To:Subject:From:Message-Id:Date; b=TgVDmaIovvIcZUJV2JaWFP8LdGXN6Ba+B1GB02tEMhB3nfiB9H8ILfgF0RLdE1t++QgngSWO0cvK7iB1cdXoc2zx9JYLr+HuZgd0UbtvUL4b/L1+dttKvUCrJY/E1hnQMo+FDNzf2JGl5T2gNdLv7v/2YZ5tc7AfAsPDXwCdzOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkArp3n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkArp3n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5133C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748561993;
	bh=v08XxCZgzv+Dn9Sm4lWm49wlHOhcxKq1IinvRVzNY3w=;
	h=To:Subject:From:Date:From;
	b=kkArp3n8vs445VkNvDLcD/xFjHDqHUTHTOjLkbo8eNi+7EKUZJwSg7rz9H0CvKxdw
	 YMWaRFP2rbsCOeoFJkB3r9rYaqkxRcvipVpYsjoIZAgsMa9gwNfZ9EWQ2iKEQimRcf
	 ETNh8Rz34sMk9d3tfNdDUMcIM81epEdnXeCauf7lJw5Lo2sBp7IvbyrUKukBoQzmdj
	 2bKlL//+GppNcHHVCh0WIxEcZ1jEvibOkTSHrkECLulctxv2SYBdfTQ1OySJe3I6cH
	 kQBwXJMyy8kIjmDV+xolz834ZvNyV3ufHcjh9otLglR6+WoM+jBS2THuQS6cOp/0GK
	 3p43kii/lyCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2CC5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856199358.31137.9732806763814098451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39eb7d1ad2ad1fcda5170acf30f7ce2510dd2510eea3caf762d49164fbcfd57f
Date: Thu, 29 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748561993
