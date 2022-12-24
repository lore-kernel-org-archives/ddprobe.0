Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFECA322E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8183EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671898287;
	bh=Ny+2fhh+Y5+UjalwV54S+jymbqBkN0mN7REO/SonPPQ=;
	h=To:Subject:From:Date:From;
	b=BIXUfnuppG/n5Q1DCnP5Gx2aOs6vo4xhBOcEjd5Na0yBL7wSYyNQ0rFPr3NQgvuVc
	 Mf+DsJoP2CGNqyv/2bP86qU9zelLXImbW0P6kf0jaY57NuP8cm2+j3yuzZUBP27YPT
	 h46JAFrJ8miR51qnYNXGOJPm4tTQs9RtNKOo9lRoj0RmogdtAlgScttPwEb2atTGmN
	 FQtI8OG63/cYjkF+y4nMcvt1aQxo/mwjD0sE6R0fbABLqS5rNQGsA0xOyttvwOXnLF
	 OMaoE4X0HNet7IXP/Iph4S9JGvefCs/9LnAWqzvLktuw5qx+QJFqsln3Qjbd82WaxK
	 WCQS9daXDmgPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63939C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189828738.6122.8645266838951397432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d50d344224b7b600c148cf0740d6471295a2cbae25f085abd5c86b1514c8b8
Date: Sat, 24 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671898287
