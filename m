Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E2229A8
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBFFC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667505054;
	bh=g+WiPQlSS18x38hjDVo+OpeTXzWmp9sPaCG7+disvlo=;
	h=To:Subject:From:Date:From;
	b=PDDROj42h6GpJnw6HOQeaIw+u0YVDyVc6bSnUDb32KSutBOKbkq+FDN3r22migwdC
	 puGFAlNhKHkiL7zUbfv02i+R+uRtmyuNKUCIvGNx3BdDbiSmuCRrQzDRbxkGIuOMNC
	 fzGj8E+CNrVHIy1HS/SU7M0DdWVWLNban1iEvYBtQ+yfNgK/l1ggAh0io6n9VSEs0A
	 9JhqJ0NItQ2OuaJXGTKqP98Eps/43OCezHZbnlwlNDWhySafqCIg/AsiGCB7k3jfOh
	 3UvwUm0zivobG/EQIGPKP3Xd/UxX3ifjdvj8XL9Zo6Gyir/N4J9lLov94IOka8mV6G
	 bDZVfkZTod7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52730C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166750505433.32539.10427412834338543399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5179f1376ba78d9c558a7960042bc75b68ae492e630a7b0325b165a5f3e39a
Date: Thu, 03 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667505054
