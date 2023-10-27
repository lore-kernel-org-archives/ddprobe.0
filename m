Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CFB18654
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApmQbbwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E4D9C433B9
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698418096;
	bh=GF1ENWHS2kJyNtftytB1tj3A2TVKlvJirRTG93cvDtM=;
	h=To:Subject:From:Date:From;
	b=ApmQbbwdiQ41AFP7AefHl5chRjmKttfu0VuKhT6cD5nYEoxveWIZb/Ga4kKk7Y1IX
	 djA/gLOS4BkDjBDpzxALDIgbNmr3Kyvv9atvYDPsM6AYwTMfokAN1F1xFNvEnKsnZd
	 eqWPehYpWBhdo2vg7lUa8rHy+ym10aD1cJBa+ArVD3CyXVWbKbHL+bz8KAqPntlqL7
	 cUJqgA/Myk5kbHj/9rKlsXevbLYtGMg+Cxj7EaYNzaCf5szVMv4J46Cc5WaeRxlM0E
	 4PB3HncmhaJdDIx6aov/vzsLK9uMa5JxbpV42Zwn4b1RhI7388FNvzL6JBle+MkqYK
	 Vhs0pSmXWs32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 705C3C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169841809643.17250.13626311005511527553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d344c1e6ded892f5bd192a883d307db30a286d9a709577910014fbe61883271
Date: Fri, 27 Oct 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698418096
