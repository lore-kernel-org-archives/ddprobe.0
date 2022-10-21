Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D867E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABE5C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666369853;
	bh=natmxY2TnIFAXO/pJN0pW5cKnLck4xjTW+04jNdXwps=;
	h=To:Subject:From:Date:From;
	b=MIjjOr94SCfNIQ0LnEHQwSpMXwAzCfpKnNdBXHdvZRxNw2liIW5KEIDMT6MfqW09U
	 lY4lSbqkMM4htTuJ7jN2dO5N/bq75AqWkf08z1D3ts6qM2U8KPPDq+e9SUjuuXWX8w
	 oS6DykDOKNuPPIFV8u0qc81OHW0alcnGsM7pKou5K0ZrDMlqUHomE/WKFWhVKEegkI
	 SVZVGVtcCP1/EXJ7lHojkxb3at1b2pL7rLQnj/8qcxLBG9IsccJHZKuNoksWR7oDCD
	 SCJGuYNBH9MuZJ+4BeUD6q6amTb+u0ULAXydeoDMgfu4tv21x9DUwOMHLbcO+i05hi
	 S4ksc3t0M6SCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52809C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636985333.13365.17117522644412738092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a54cb4473c82705af08072b2ce40c6c311f906de83d819c732467f7fb188e6
Date: Fri, 21 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666369853
