Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62872185A
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 20:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaeOwxH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74E4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697316428;
	bh=rdrxHe8eqRtJX2kg4UjklMNjrEGnuEbyPT5WFEax8iY=;
	h=To:Subject:From:Date:From;
	b=XaeOwxH+KYSJmHjHWdhx4VJHGqw84/9kKQixKSMGI34k0BSw8N6/i+HdzqlDM3055
	 OwRmSk2l20svx1RZ9CpfSX9VwCWUd9pXwQd7k8DbNsl2F9rVT6vetXJ5rL4E4q1YdK
	 bZkwnJJYINDAhxTINloJtC3YILQZ+YvcMWBkSvDe9V76/nnU36FdPtUuLLH0z3JiqN
	 shvib6hTevKEUeJs9+9nJ1leLEOlTYA5EiLPGhy6jDGa7EAvmgezesTCOE756NQlDe
	 3OE1ucgDK8oGGLm7kgLZGdh1fmmr7/x5tzlNbMGlB/jOHwUgUSjtHKB3qyJ6WZ4QrD
	 LrdW63VYXtEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAABCDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169731642869.5049.9514597726168592605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acf83bfda490a9595172b051683c7a6dba92b6141a8726f140420df2ac378d1
Date: Sat, 14 Oct 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697316428
