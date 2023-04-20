Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0DD23DB
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 06:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E40C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 06:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681972565;
	bh=1uDLQ3jedokDTbmKbHWWvZT77nZ9PIpscvPrHz5iQJk=;
	h=To:Subject:From:Date:From;
	b=dNswudm+CsqpusgkUsYFdcxy/McOcdgGBNcLmBPI6uesEBRgBXvsmB3pCafw3ifpI
	 J/kCJOpefCyD+4iLQBRdhBY800Hq73GCfMKn/rXORYgiBCmLgWyafXxKcAWGuMlwEU
	 47SpWqsyY0/1A9CkqpoclWw1f+AMQJKc/l1/r2LKQYDFavaBO/fM96iUKyi4vUWRgs
	 shXOMC0Bxu6vCTjObiV3d8VDSwPOGJSdRQH7OB2wQmW8Iod5KddN3gsBZtLLF/HFFB
	 +ma4riv8/reokVvMw8m/6jJy/TTCtCOTKrVhanifOVh1iLUs8AOaYejJoYZqGtEUM6
	 zhbQA6ZBHXUfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB15C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 06:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168197256577.12396.1566714747751080613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a1998f8045ad2df503b20057534f004f1d81f2abb8d71239ccea8d8a5e53fc
Date: Thu, 20 Apr 2023 06:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681972565
