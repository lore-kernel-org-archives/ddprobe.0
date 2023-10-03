Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8048DD2EB
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 16:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AA5C433C9
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696352168;
	bh=Gg9Y8L1oF9dDmjp1TevnfNpW2pP8oBk3JsziM3tpArA=;
	h=To:Subject:From:Date:From;
	b=Xqg/0ZoNJW2jeiXOZ4dmhdMKnlFlnTbuWwRBHl6EWbCrUpUBIZeBT7v3b3JCNFFjn
	 W6UfWvimUsCxUbnRw5Ns08B2E+J2KqBmkAux4sYQeM/VCHu466wvpFx2No6zdIWSop
	 8zmWKjBsC8pJlBzSZp8tNcAkVm9vEwRakpkzyrR7DwfbLKh7s/TjdoeQOtC709mkv2
	 5Ud7PoBXJtFnWE5XqMy+IW9i+uFLHIWLdqM6ExIlkq8F7iQGMR0OYTuJi1L3HAuSMl
	 BVqoHDAhlihLFX4NdwgUx152TQ0c3i3/8gK9fCPHjRb/zHvMcxdDqZdkIib7WQ75Pn
	 hfDs4qXjl9Kog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1488E7AD78
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 16:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169635216877.25128.607899818113429679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9925e831f2a7b78747cf52037d1835b120128ee316ee09b296e4405bf5c1966a
Date: Tue, 03 Oct 2023 16:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696352168
