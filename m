Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDF97C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68185C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668598854;
	bh=SrQyQtCdQ/WULSuDiQ0MojzTan+A1HRrTnGXofXvcLE=;
	h=To:Subject:From:Date:From;
	b=cG7yeBZanrZvg2u+eiuqZqSR9lux3R7jOZ3+aizFYuApWVSBxImazQ87U1/oXWUXl
	 4w2ihLij1ZF16LMDrhH0VUEpsJRFBsPakTykAtpsWFN9ESrVj4iAuTtWiES+hDSN1J
	 MbpZPuWD1cYogZYXTaSmB1ORM4JPhjQlly2HXSjweiXC9jzUdi+KtaEzkWlBBCAnaY
	 z/rOsWouqpy0yifoIIBhhaneXo9wZ4uTYEMSc4cBpTZTqYzhqZbfwXbxVeVmjQiIxf
	 ZOK4Jz4T5cptbra1SZfcpImOTmOMtQLW6mnks2hzQJ3VTSZHysPL8yfoA8Yx0dGdqJ
	 gnPtnP6YgZi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E017C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859885431.16865.16775867997459558740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d246de8ce214302b374b2670015e53111e0481a44b6315de13d98ae3153fa3
Date: Wed, 16 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668598854
