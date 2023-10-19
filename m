Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AE79472
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 20:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkUqLJ/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DCCC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 20:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697748492;
	bh=oYNjAl+3NPxCY3ZiRpfKI4mfHmBneLIn4EuFZM0V/Rw=;
	h=To:Subject:From:Date:From;
	b=lkUqLJ/yFPhs9M8XC32GnUECSpQ11jmHuOtN3SBIZvsyFAZSJjNL4lRkTbJrOeuIB
	 ShMe6IoeF9eEq0U+6cnE0aakvey9OW/2OjZqjfQKYjsEN1xEila3/E9qG0J723NQsF
	 UommUlcxrxpi8tNizpXazVyk1D5AoVzwyUD7svAZ3Lkp+0OHeIGZ7R1xmOTmhpgVBB
	 QEadBtSCwc9Ii56XVdt2K1GRLYJLLgg6c55lcNrFoqnrqqHIDHfgZQKnVVJ/aezb73
	 Zm1pgewpg8YoSqKmrm+4Q9ekSr6qolAayErKgmHyAuuK7n9dwjnf8sU2MLCTaLJAdk
	 B1gKWaUhVIY9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEECCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 20:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169774849282.7790.17609361825538860453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fac1ec4e3bcf45c4146dc8fca02ca43babcbca0af42e5b715bbe89951375425
Date: Thu, 19 Oct 2023 20:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697748492
