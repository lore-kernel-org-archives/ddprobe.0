Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5045B18629
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 16:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDzchT3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C724EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697302028;
	bh=Rowht5b82NiQ0IGCDtEw9jUHpMltIjUhR1zZ1JC2zDQ=;
	h=To:Subject:From:Date:From;
	b=oDzchT3PIewT5Gf0TWWDi5IhyCkSDcvPWectH6X5Hrb9j92OTQy7fnrYgPsjZjFZW
	 /bnVPbtHw/jtAl6twnDidXFit2VldvsUMqRag8ognv5ZRV/b1UVNCJWzTNay0UBqmc
	 3BdcYAg9imI3v62sMpKJidp3yyOnJq5yQObQ6OCsHvFbpY/895igHPxGPuj1x8C048
	 TykqnkvzcsiqKBiw63FFRSPu6lfkoB5bPetzAX+8oP+e2+Zkjer/VWLkjbk3dSlEm4
	 nGrcE9/4lX7fdol5M5pY6IJij40wgV6uDkXM02/MYsfCD+pkYSomeZzNaaZ6K7krol
	 ALZzxjzNS4Peg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE33CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169730202870.30833.15009463280738979232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa6da02fe070a9cd76ecb0807bdafe5f485ad9b9221ecad02f46f75326a3c41
Date: Sat, 14 Oct 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697302028
