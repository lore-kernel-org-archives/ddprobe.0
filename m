Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1470442A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64D56C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664921453;
	bh=HiZm+QtF7nG5etabJQRpWF2AQKLyAFgiMFThy/RmwuY=;
	h=To:Subject:From:Date:From;
	b=GuXduvZA+rGEAoAAuIP2tD9l5Sec/BpLvI/fAs7VZSKD4zbDDEYuGPqsKz1e4uvZd
	 Ah/pruhO0IrBNhQSOYfAisnXhqKP1UyivHw4x/+fpVr56v0UHhr7q+SWCRcjfARLBL
	 uSltXN2DAAsOYnHzQ+rSoO1YAbmnIRJbZuWD9TJTWzRlKS7yrwQz1f/6I3pbbpwACj
	 Xobln9ladN/ETLYXS/uTz4iRzWEZvGSQAeh34AlJdrikDF4CSntYKIfWgkJ34m7QsS
	 QOHo8n5eDqpiKJFHrX0XnfE8JbQC9KjR1CIFLSmWHjfg5C/TEpjH5JZg5FRtrh8bBk
	 JmBVJImSBo76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F819C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492145332.6743.1648214695835737319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79e8f9ae612fdd3cdfaac81d7637c4bc37678b1da8928c585b8122642ecc37c
Date: Tue, 04 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664921453
