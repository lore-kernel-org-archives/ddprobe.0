Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E20D2B9A9
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749019794; cv=none; b=XSfevzyc8u7SlEWwdgqAposOt0j1t6s5OJ/+k8SZxDUrUuHm8raUTk4Psy4AQmCAgfKHz1pfhtmlu10/qluhfAwyKVvdXkUSq1FChBAdVEnuuy3pjb20xU49JSWCWk60coNZkVlJVvNkGErxXREpj+XxdlErR7n3t7TREBmmE38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749019794; c=relaxed/simple;
	bh=dUYIjlTnXN6y+Q7e4wL+bZSdmFd8gDIRnWVPiE8kk5Y=;
	h=To:Subject:From:Message-Id:Date; b=rHt71C9ijVZT/NoFYlAZg06wTgX/1noL1GI6p+0WSN2DI/a2uZcJCDFsdeLX94DMM7yZD9J5BIgnyL04LpjSPUOLfqlJvHFFnV8n2rGloQd8/ErCieXXnQ8U17VCBTzL+/pzSdo7bMwRnlPXU+ZfjtRXl569Uggrf6vFYZbMRSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8C+t5fN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8C+t5fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749019793;
	bh=dUYIjlTnXN6y+Q7e4wL+bZSdmFd8gDIRnWVPiE8kk5Y=;
	h=To:Subject:From:Date:From;
	b=N8C+t5fN6QU14+BI5xO1fALzqAvlctG26gLGDZ9A9GRPTbw1cYlHDKbEsTLq16VKv
	 PcjLtyWICBbdJiGBRqb5Hmss0QhOnh8cA5/MBwBRboUoz/GGHgDGOM7wtpRW78p6tr
	 jgJi5SQsGTlArXCYeld2cmGjPIRusxq3XWy8nlbuMJHZlsCKS7kYg0BinhTC6AOEY4
	 UO2dT8tybKTvNadTiLGsqptQG5aec2h6WjUi87AQn81jKrjymLKwRkdrH5ATn0lv7Z
	 5Q02QromqL8QRyHMPpl15GhvZ6wSh5ODHkr2ezzk19LdMl6BZnLi6a1uV8MdypWcA3
	 l3fcywTNBX+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA7C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901979358.1942.3158641177066939908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1818f793aae384c60784805961d48f5d653d714f532ff74c7ca684c46bc21c62
Date: Wed, 04 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749019793
