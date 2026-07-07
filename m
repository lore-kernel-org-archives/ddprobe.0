Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0513FD159
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783429114; cv=none; b=nV/BO+nszPgHhXsh3njXITVfAUn26ZnqXkcVHAu7t75JLP8xWig8ITxcr1nfXwLO+dub2+ilS1Mqk3zD2K/uLnwmbo8tZ0VcHrfMcJ6iWShz/e2YZU4tmIS81oFVgYDE1PPqs3QMOVWvUou7JmZS0kWL16kfsch0cvm7PbnkmeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783429114; c=relaxed/simple;
	bh=qY5FmTXGJyueYp5YNXhLiZPF2rnLUKM8lzSHQCzLfcg=;
	h=To:Subject:From:Message-Id:Date; b=qQFi5Fk8XzycYXcHbACL1GmvSbrPI7LPUVz8oBDqpTJzstDZ/KCZTpDSk4k2kySciuB8MQEYSdlF4X0iJZKJKuS7ROGB49XwVncHUgSRhs7t/QciC1r2hPJ04rlL5wPCILODrEtzQLwA7JvG/lkLT0cI1DAjrNcCRl9S3eKuDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2s/1g3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2s/1g3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7359C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783429113;
	bh=qY5FmTXGJyueYp5YNXhLiZPF2rnLUKM8lzSHQCzLfcg=;
	h=To:Subject:From:Date:From;
	b=J2s/1g3KjH1q9roma/fB7x4kf/EGwTEeDunbj3e29EFItcwcF2Ay/Rk3loRaU0SHd
	 JilZ/5Q2Y6MFlWHWBKAj7WT7gc2U3gn+iz7dmrtKCYcjgqz35E1NR58eFDCdZiHEq4
	 GprA04/G72JCeH7And098Gm6Jaii4Maa8QHyFTWBlI73gVvViH+Z0DI79ZhYIH0emc
	 l673A9wn7xdLURuvrNbQ1mxiyFFCtHeNgyojEbyPHGEFrUUP/6BRSARoKiBDLlh8ax
	 5JFsNP9obKVn5w1fV6dQAyfJZBMMhDLLXFYDautbcYbohg+N9rfnzMTemQUTJWFwkk
	 EdWPpPQQ7dxnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0536C43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342911371.7582.10494995487643743510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3640bebdfb7d96f617e5ebba69104ba65fdad9c7a5d8b36ff7eded2d7e50ac
Date: Tue, 07 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783429113
