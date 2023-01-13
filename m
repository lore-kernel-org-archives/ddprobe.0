Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF262AD4A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF57C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632887;
	bh=OL2BdjWy2nzV5b2yQW7uyeJBVMdTGWhFfu+r4BL8ue0=;
	h=To:Subject:From:Date:From;
	b=KSrTOfsXtH6KP3dXih4wUqF8zy8HrN6cfXgpyVU9rPBCvU7xEdGW9xTvSVLb3cvyY
	 AHA+HTgrjYPOnb9EUjzXJeKqJeCpSKVlrI8vLkp1uSWX/kxGnH4geQIJueTbFu4CKy
	 PST1pIcMDHc8nxHH/DB25FI4hikCYrhJf7T/AH5csIWkjv3Y8o21hri/+j7h7Fgam0
	 LR2XUMI3r8HdRAMeukoD5jLHSpTRlPkHqzOUpXJvwCKimXWhDactgVb8XH83fNF97J
	 v5AaYX5V3CtSlnbkSsJvLQKJDEt5DlT8xJAjCI+9THji0ND83zlWmlcfEtN98UEkdq
	 QY4EB9OHXJBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F62C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363288741.17960.11219663274396669334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a086df8bea42923081dd10517a2f375b87b764f8dc48be91a3f65cbee54301
Date: Fri, 13 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673632887
