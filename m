Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9FFA4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7CEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666747253;
	bh=migvnEJR2hniTDOTWN8x7AXin2+J9Y5CSut1yEKGkkQ=;
	h=To:Subject:From:Date:From;
	b=UmNUE6no4PUI1KEz0BneXy4fWDEjTQ9Zh4Ea9APzGIe3e6+6/50vj7OYgCIKIIyxf
	 AFQGV90FWFCzUY3f7CEJhtbqbl5gpXwkrlItOYNxQzmVAyqehqOeKrYUrBn1O0c0S7
	 1frzrRV+GTcTAG+Vn3NZLLehEambPhVTxn5X5aj3HSW4/4MVoH6ZF94VGQT6iSIEx3
	 taLLVIhE45sj6tlMmnphF2c/E8WhlVyxH/X97nrQSv2FEoTLn12AkH7YctEKb8UwhF
	 dQk3QgUpx796d7B6ypgn8zkNHIepSD0sIoiKOZIKC+1ul6SfbusWqgaZMNUZf+/Xbj
	 BFzd53IzYFtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A74C38A02
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674725332.20278.16468095556361123649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3bcf67da0b3494fda83a27cd332a874d22b3aea559b861bd89b018562815e0
Date: Wed, 26 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666747253
