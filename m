Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D200E1382
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822B0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668852654;
	bh=tZIf6PrfmGY4jsA0SutxkYLISmOU+UCqz/mfDzENp1U=;
	h=To:Subject:From:Date:From;
	b=s4dFXCd3Jb5iv9XUlVkLGZI4+1n7fD9awgU69eHPL3DbeG0ctyblquCbWkFd/47D4
	 NihsBpDH8Slmp806+GMqO6bG/BEz5NcsurJs6hssM3fSwju5Z7eLlRk2cJIweTRB5H
	 1qBELC5kI3AX1eu2YPVNdER056qM8Dt2LHPA0c0NCV8bODpvNYfaKuuj10kVK/TC+H
	 9tDKCLqgagOs7lk9zKgY7CJnOpKQepcSjknkPFvi8BzRf9C1XI/TdVW8PGNEXB/7X4
	 oGxiL4il300YQkJLD/m7QH7J/pf3/uvw1f6Tr7phU8g6RCmOqUTRgMIiH9QRytIL+M
	 kG8njzeXKk8bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A0CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885265437.5871.17476560206378589610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7dfd4c1f35ed40fb6ba383a3c503ccd268fae7b5d5ebe5b01126557a2f28ed
Date: Sat, 19 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668852654
