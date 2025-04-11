Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448642586FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744400394; cv=none; b=mCy/FrCZ4wBDrHwbGEI8S8PB5wlEX79Nate/vZfiaWuBY2dviTR3phz8EUSMzXzr3GWyjiFzpjVS1SHbaL4AODUFrR1zz/NhGykgMGkXteDul/VrC5cx85JtFiqkRwvQ7luG2DBqlHbIepU18zdy0MdcBDPpDzkvsG6K8G67cnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744400394; c=relaxed/simple;
	bh=RpzEFrdmURvBzVRnG4ViixeOdtpuO7iDHcFLlPCN9aw=;
	h=To:Subject:From:Message-Id:Date; b=J/RzCSqqjgDzdI4gWwKI5e8Gsa/KIp1pnlbfkEmdJ/wQas5SJmovch7OEw3NcuX2SKqiNbJkqMQpywwZHBoAxBHKyZu9AtRmyWB9WUem7BkhNqQK+5VWWAmBKO+V+B01yW9jIaafpj/RzdB+ROqYhoHsAfWrxDbFUcqqqMOOB7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N86BU4Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N86BU4Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A4CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744400393;
	bh=RpzEFrdmURvBzVRnG4ViixeOdtpuO7iDHcFLlPCN9aw=;
	h=To:Subject:From:Date:From;
	b=N86BU4XgnBlHm9H2RaMiO3W+k5nts8cJX5YEPsYatNLGRx5G2fwbDwWUrS6pxxiP2
	 pYwiSapma0biXlHzOU6byxfcv58BRQrH2TKRnV5EOTMcTuTeRb0zdW4mErQ15PB7fG
	 B6nzpR4YSEtbAOOKypMDURG9+np3FA8m6E+CUBwVL6jLc8kVAPhjhYD2yD6LA8E3gG
	 cXUbA6QHvIa4DD6eNxW18tiDo7zaLRZ0w6JBTiIjy4dJ+4zqhf5wzXFdWnU+KgJYzV
	 6Q7+Nzd5tfwCPnrnlGyd7TpPE6rw6psTJ6HTXAkbvY/HYVO8uPRgCUJFUda9N8bzdF
	 w99dMQOU6e+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F798C369AB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440039363.11119.13210436881635775829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937747a1f718b77874af2c96422e73022d340890e3551263826ef239d83d3cb7
Date: Fri, 11 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744400393
