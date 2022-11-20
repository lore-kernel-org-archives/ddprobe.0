Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BB2369
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF1CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668926454;
	bh=N9+oZThK/d1l1xqYRYH6tmSJuCBqnkG+iMOMLHfu238=;
	h=To:Subject:From:Date:From;
	b=Er56bZsN0n+dv782ZA83osjkiugpPaGNdyfateh17tv5m2VUnTkQt5j39A8JYrJSA
	 9dSOyMkhhC2bIEX+XSK270PYiDkk1HnoBMUaHFzfZuqfTfNEx5jrUELMDJ89EQx5o/
	 mCkYup5FegDMIGy1wLT5+EmICx1yMgpeyAXDZvniNePZhJt3GI4UISQsH8+q+FAnVC
	 JHxr+6Rh/3ogVRfjrkXUA5dsg7HRqyV/vcaDhYbR0YPDcOdNy/mndRyCI1tkyZ8dNg
	 3coswcY0tn1ls2OkQ36kQZjfF0419OHUv+mzcoeqqZp2wchDmiw+WrGPoOYXWvZeLy
	 jlzL1LIwnYr4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC80C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892645435.17349.2152552577073337014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0b102951fd296070a25c05cb446bfed8a66b47b99044bf17c8613dc5962bc8
Date: Sun, 20 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668926454
