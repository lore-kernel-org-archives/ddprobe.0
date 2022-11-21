Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C258979C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B5CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669056054;
	bh=kcfok/T5KkbTaWy8zqHlK4IU88sJUYJE8O4bjs+39C0=;
	h=To:Subject:From:Date:From;
	b=XTPkS+fIKAPmGwt9v29s7Z8S5ejifkO6O9Ilxw1iG8TedfEcKDpBLLWQmZ6GAsrEh
	 H8SzZjK5kp53lGXgctngXjFS+Q6DCRv5/+mGNaqqluU1P07n3DIJBNeAXhxGfxkR6r
	 DTpfB8i0y3XpHMADENSIGHuBJ/s4b8TW0w14ZnGmV6dibeMHz8DO/83/Vu2SGoDRQT
	 Z3hxmiFlffm6791fIkJhrNSvuijjvOeqUK+xv2AXrm5M6GcutXjc9P0RWaN61P+E3l
	 OAffa9ondkELo7Xu49rTWBT6w6js4DtVQKDMIUbobNp9P8dJHJivo0787O1fMRCOpj
	 /GvgWXvRaOlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55380C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905605434.16053.5030687980123609852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f92be57766d42d5c64a7874b32b959647665309345915eb733a2cf1e2f0149
Date: Mon, 21 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669056054
