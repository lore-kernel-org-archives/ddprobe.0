Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42401348C54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785220834; cv=none; b=BkRx2lOcuElO6sR4YlNyXDK4Xw+sWgwVmXAqfa34KLJCDPg9tGKyIqhv6qHcFwBpwhwaKtS4MKWE2DzjXVvXTdvZ89RoInjyVP4D91OfeVeaWbSGRddDkE2TbwuO/gD3wD5eP1KG+77PZekIXQF4oG5LCUbKSyMxPUbabGcQSq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785220834; c=relaxed/simple;
	bh=OwAwOtUpDVxRB8CoNikf2mxThVweJ+sR49Nt4pI/cMI=;
	h=To:Subject:From:Message-Id:Date; b=a8TnKQSYfAnlu/dmIXPKnbAfgz3If0XgZcrkUorO9GGNIw2HeyQpZg/ejgPJ2RsvdQXc//psuBCyJ+hpo6pr5H3PjGMyyqdGlrOkfwAfJbQJd2BPFaydRAlDM+JrwA3wwPIimHdENtEhn6cA+pDERRuN4lKizxbxgzRL1DpB1Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRpuGo1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRpuGo1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AACC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785220833;
	bh=OwAwOtUpDVxRB8CoNikf2mxThVweJ+sR49Nt4pI/cMI=;
	h=To:Subject:From:Date:From;
	b=IRpuGo1dbBW3xfbio62shASdtbYqMzcaBVdcRwF++XlGkHBlYLR3Wt4LtSYS6+nGG
	 +IIdTxK3gPE7cjY6uDRr+NB340Aeuv4t815WnX92l1z7Ze77cyB0QDtYvqwhWjGXIx
	 756PELq20+wdJ78dEn+Qel7WAHutLvB+4ZA74JIyMs0gZ1ZExLg4TFvHf0Vv30oypF
	 /hi5tIpX/Sfp0/CLycCSinPDAbZ9F+3Wjqb4v0Wb+gE5A4pmI3k+tX0QMVkj8M4hd6
	 57HEmD5xY5Ky/R1Xvpj5ehMK+CetUazwUFxVVYOY4YkT8vn9Xh1U4gx0skg1+b4kpi
	 VvB9hvkbZyfZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA29C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522083370.31762.6280323532237813768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414799aa5c493ad66b16985a4bd41b8f2e2184b4b4ce74990eb542e33b2e4a12
Date: Tue, 28 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785220833
