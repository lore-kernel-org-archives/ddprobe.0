Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE237F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD6EC433C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689909128;
	bh=B9OMPDWqcbi34IIHgglWX6W+RnzIzY+oI+S40G7+nEs=;
	h=To:Subject:From:Date:From;
	b=KFochy+MdjPwwXrz8i4jxXOPZ6VRWFsHHxbGpVJRCNme/OyDDbYei/0mwsMW1YrnO
	 4GJdW6aJEaItZv/W36KCEjzd0jNO1h0UExY6Zr/vdRM27v5DMTu+Qpu4fhLunBcK/2
	 9+P+7gsRtNwzxT3sd0L67VvV5TMXBtePbgdRBLxRujUvEH0iR6N7rFLRsrCz74uaAp
	 TKJeSkvt9WwBNG29eKa4bOONbrzbPCV3ZPh6CkgZo/wtU+MmOOLOsjJxcNQQwZmk/9
	 ao36J9Id414ATGpON2DXey9A/g3xqtgoFVn3dt7yIe812XVermi0X1mA+AvF4PJhU+
	 XPIRzoc8CTk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC3BEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990912877.23403.736047692564038175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85e18af43204c36e365ec599afb391ff93b17f831cdcb66420f8222f2071146
Date: Fri, 21 Jul 2023 03:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689909128
