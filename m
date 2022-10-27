Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EA0D501
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D29C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666893054;
	bh=wn9B/m7ZrNUZh37IyGHpJj7MRekOp3QiDSHYZr/EU4M=;
	h=To:Subject:From:Date:From;
	b=ur42VFm0a7QuT8YJJB9JeB+hTVnR7s9DFI7DZugSAkQA1fp/X53YwAeMNYpH0skYh
	 Jha8bZM12nsAhCC79P1wvy+oD7X7wzmytOKLaDs9zCf7EUxkzKD2Gtcupe/ysqAbIZ
	 ExIqgASObZYubJbIr7p4KADWTtjVUf+R+SXdmi1vikQ3bmLkgaSD9bvGIOouOJ3X80
	 3r80S7pwMLcqoJ7eyCdwkJbB0+//qC47CMKEIEJ39M+GE0KtBCVko85t2ag6D9/edL
	 Tmia2lxaXX5fOxXq/xagugeSpvGv8bE9NcfHcUHiVzIutjnLsCRhEzr3prO7gFGwjU
	 QtIQcz0Q7PB4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AB1ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689305435.22558.12513434832529579645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7f429cb0fc54d4e8822fd6f2d1e85ea3c3ffb2e2fb75d1d9803a00b6a6f9f6
Date: Thu, 27 Oct 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666893054
