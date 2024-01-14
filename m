Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D302C681
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiChQb3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF7CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705275496;
	bh=DdTcbP/TuL3hLHbLKM7p9DBHDypy17fDYxXYLP9DScE=;
	h=To:Subject:From:Date:From;
	b=WiChQb3JaZXdtWWUMIHlYEKSlnjNmnjYSvHejuECE1onVxXGppEpe0MKh581hFYpx
	 yU+ZQMlzSUIV1Wfn184gOstuQgnAIKTDnSFn+HRSY27HcJW7ZcUWi9QA+AcEX98Lr4
	 9f/jjWmHZxFZa52CEWmucYnHPUS5QVCJkAV9mAtFGW0PqlXZqWer5Bpn4ePDvwSAGZ
	 Xj8yU02J3k/d9rweje15s6umFIq28B7gdJzY9oQ1ONEtgdGtDxOhTQd+ojKu2L5Og4
	 CjIiNDzIFyzUkehiSKWpVioY3HeW2lCIYV2AcPmZc9l6CPVw4cv8Lhead6OpXPSSGT
	 B6AkTOVMgIlLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62203C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170527549637.29022.9672972547569086745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfe26ec0ab1d77b505ee70e8a3d0caebf132b3c82ed0f6a498b9e40a7bf86bd
Date: Sun, 14 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705275496
