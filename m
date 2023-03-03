Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9F68F6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BE8C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677883625;
	bh=8B4kuDrTw8wcHkqVOTTNvCldQ7tqUmlQcKrk5iSSYeA=;
	h=To:Subject:From:Date:From;
	b=rskWTE5gEr3PZYevBPQFTXqxoZXlkz6heL32ShNvOspLDq9+fElGIkCqqOuM00tCE
	 lI99GixYvk2jbLNe74yk2LdpzTyqHsf6zFyItVbT7X35bJ+WmB+4qo24cOPqC5tJMS
	 p0uTg2X1WVi3LeJrGW6oTRS256r9eoiNu9zjM91WbPmgFj/9W5TLgfEh/mJt9B3Xi5
	 L2ny0TNnF74TPzgP+VegNOYCTr6PCl0N8jFObjSV+67xJGvAzmko5Go7F0fA+7hEkU
	 L+kaEmJAPV4ZlFrE8DC6J3IZHteYZcLvmDK3xtILWzqU3zxqs7EEYAfsh/OUAN3BCg
	 ZgJ5K8j84yttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1759C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167788362578.4410.3187426147894037278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42519a04793351d6cda0731a522559d4793b004987409d46d81b7a6186cde344
Date: Fri, 03 Mar 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677883625
