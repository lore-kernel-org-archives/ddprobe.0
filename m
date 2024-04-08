Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3872657CE
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712575697; cv=none; b=XxjAzEJEsWybgah8HHY4FQj+zks0qUkT2SSoVbQmMREwsVEU4sUBA5T5phCMQZ6MSyfUpAtDt+Q0ykumOop7vmCn7o1wIXbiwrYdSwgG1sJZZcRP5gJDN5sVJ7b57SfpwXDxX5SSH14tl0yvZ+Ib1wYRdMBktzhEQ2fKpKLlurg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712575697; c=relaxed/simple;
	bh=4zy95Ek9BKDL6FbUBS4E0prpvW7swB4Df1o0XHJ2Rl4=;
	h=To:Subject:From:Message-Id:Date; b=EAb0cG5HttpsCmNHYL6ZKdA7LQ9Yb2pnpe072aXAs5oGQ9sYzXtxj6AA0r1muUyno9twqw9+1EGVRDBKLRdM0lvDvRZPFQ6zxI7TRmDqQB86H8FLvggdY/IB3CUgkN7lbQBkJOjRZAIIEMTIqWq2hNmbxc8hGGWNCOuOjh2XRsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+kCU9w2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+kCU9w2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 928D2C43390
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712575696;
	bh=4zy95Ek9BKDL6FbUBS4E0prpvW7swB4Df1o0XHJ2Rl4=;
	h=To:Subject:From:Date:From;
	b=P+kCU9w23XG3UVzOjS4gamqH2VHvGVA99jScMZapJdr0W0DGVmDCgTfl4/iST8ryC
	 PmJDtMz2NvC1eIIikd9zs9GVoSxXF6rn7fJMe581M85covtHHmhjq+RK8jmdRWJKt+
	 jAFWq/lekCQxuv0TB7Qr6RulQmy4Bmd8YmkrvcF2jA9J30OXBT0R6v29mcvak0dc3G
	 xoLuRhbVkJJ3xSPqVJTKXn2fbwBFzu1tNstj3vX4W72lRwCazMT7h7rQPd6w05mTKa
	 WeLJVEF5LqBBSdNZmaLErueMebiTbqANAyeSpURWVWbtS+UJNW9gRkPsy849SHuN3e
	 K4JMELfPbY6aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 762D1C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171257569644.10508.18283637588185177293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bec088313099356f0a055134a3a53f08d5949843154c678d711fcc1e6597dd9
Date: Mon, 08 Apr 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712575696
