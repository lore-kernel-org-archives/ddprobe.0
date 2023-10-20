Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3D4369
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vllu/Eoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EACCC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697761096;
	bh=fGA4wHSp4OXy4ZrVtOn4KFNdWxQb1P94ac/bBIeAsPM=;
	h=To:Subject:From:Date:From;
	b=Vllu/Eoc246SWmkvyVL2JlKgZogLbPlllquAGJGzRyhxMUQUzF+soVmaxP1NGQFiM
	 8htajv1P8S4iw4qmTtERpyWNYYU4tkoEQb4JeKDQWeVCRVGJW8098iiCYBKpzyzazH
	 D/a/wYQknOgtH7net345RkbK4BFDu6NIRuUdCD+Cx9ExENhZ/lTBmiP4aezSswkWaD
	 Ta4/JiBrN7pvLqC4+RWKxPoNoIZdK5SXQL20YYU1D1mooU2vf1OUvbo9hKjldmrFxP
	 W0ZxuWov+cxb1PvIjdneU8ntgIO+f7QNMdp9ydou5lBirTv+zpCWuexn/RCJfgpKkd
	 smwmTRYy44ofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610A0C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169776109638.19445.756724639703300007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff97a98333e9f47ed8e5808c1d9dfcc7f0baa4aef7a6a32a5d2e74ecc0db8777
Date: Fri, 20 Oct 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697761096
