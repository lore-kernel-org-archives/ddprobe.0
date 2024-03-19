Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE20D368
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710809296; cv=none; b=Tm4p8lBzQDHIcPBv/V+cX47Ph4WUZmlC6qQX03s6d0JuBDakquqx/S03dDNFeLAf+3B888Q8Z8Bl9kMT9/1779+WEPi3k4fNmttlJM/C8d0JYE6xgEePqMAjdw81Xw9V1xu8gwlIgwjfXQ1H0+Jz2cN8M2Je83utafFrv/m1ZL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710809296; c=relaxed/simple;
	bh=CzrLfwt7Mpco1LUzCOkaX5Mz/T63BMtb5okpr/t9FDM=;
	h=To:Subject:From:Message-Id:Date; b=L84HZhySgD6C/H0F3eihmhckWVebJoeK46VV4AtFgQS3M8Fdl8206IyMg+osP8XTIrpfq7aCVJ5wLyEfQCF1xfkLHPHnHXVZkQJR0WN4jZ8CXPywf1VGS8Gd+fqqHBi+HOVrh71snX7u7PmSdE//iuTmDTcTnAjIyaPifqhEEFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnUtDuJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnUtDuJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CEBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710809296;
	bh=CzrLfwt7Mpco1LUzCOkaX5Mz/T63BMtb5okpr/t9FDM=;
	h=To:Subject:From:Date:From;
	b=JnUtDuJua3IalxXiFktNV1Jnx5Jdq2dcMeXtVVld2JBYsq3FQFKqfcpN0ZBWK9liS
	 8N+lrdv89oY5WQqzaPv5wcntNzn5CK70OBGm63pwqJ60LWySvkZcbgOgMfPn6FwH7F
	 DFwQ/V1db/Umtg/1Dlrc2xqkjv2XvCsGODze0IUdM0q78vrGCaxebsV+nwUoc26FTj
	 0YVPJNULd5sME35ErhFMZ6WH8XjdYd0LXuV7HNtGq3N21QJevYIzjZpjeOhcfh8QMR
	 GzffU+17h5WNp57Z2HkllYDMNfT5T51N9Fy72MJqN1ZBHaLFWyvzzuWAyTKamF4pK7
	 7XnB+OHfu+VPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CA5C54E58
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171080929639.12802.881557402266817645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f754a67b51da6643a6a152e94994f593ec4ff912801b3eb4d57e195aae3512
Date: Tue, 19 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710809296
