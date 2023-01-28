Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524033232
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB940C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674908586;
	bh=SaGbWhHvUIIpJFOrpL2NkbHWKv65OZgXlKSSQIChPc4=;
	h=To:Subject:From:Date:From;
	b=E4ZUJ5aVonXZr7xZodZxapXzdE95IkgWU+qQYfj9GEGeSfwuB4/MOpQje02zLb8w4
	 CXGMMsICVaz1FP1tN3TPYi4YEixKOoLdpj46i60OGxEZy6Gaa+NU8U3GEDc5t9zpyC
	 YHva30RboQPN8uRptQlbPwd1AdiXKCJvF1PaVMQK02OtNyUs36AbHxGxf5KtP60WDQ
	 2mryizfe67ArWicRGpiXrt0FDQAqzl9Vj53PEtsKRqlqymNbJSzt81BvHz2oMYbErw
	 3HkGxG+vWokNWvd2rgKMTNNos4fBs/Al8SbvSQnSJhzQKzx2uybiDkm3TPrf375mHH
	 IVs5AMCBnVG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3C1C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167490858578.11305.10956599827227291376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e2471e83813b080728c6486945eeb264b7a5987ee31a00bc442fb674408f28
Date: Sat, 28 Jan 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674908585
