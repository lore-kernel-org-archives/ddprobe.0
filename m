Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92B036E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE79C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668055254;
	bh=NynWOsZ8aWeUaKWE6fucN9j94DYQ68jCrD63tnOUGoA=;
	h=To:Subject:From:Date:From;
	b=EBDjb/iaZz3qdxD8A+iww2jQB7it6kOTctg/gVMlZjB2z6OcwQ8PjK+RZe3QHjY2V
	 KVftu+dl54XurZDZXsQFCSo5+u1cuQ51tvq9eKGzGdaBg6QpOXEMja9YcdtK+mxGhW
	 jsvlCFLwFcxG73pc6pfnOOah9upIvfKdNZuwGVusIRY5QA24UfW9qSHbNaja6WcgQK
	 G1EQ8M7fRZz9kcvKc2ygTbdAuzXuljVwZ2jxZnLMTrXB3lqznBhNITI1YErFj41ZHQ
	 A+FsaxjWKC+rFEqV2+piKmgXT4V5+tRiotyBk3SS2Oot/74rTz9rM9fp4j7mqwj+yM
	 KY2AuDG4bDlDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACE2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805525435.11742.5107251562447880305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054822a0d649fe15d503092d34c324a6f369acefc78be33afcdab07241d085e6
Date: Thu, 10 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668055254
