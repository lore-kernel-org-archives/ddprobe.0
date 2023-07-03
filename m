Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753C7625
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 03:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7F2C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 03:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688356568;
	bh=XXM6dCSX/8r+ilHs4J5TO1HRLgs9MTa+jOE9si/Z088=;
	h=To:Subject:From:Date:From;
	b=GEta6MHREKRJOMRTc1hYTbz4nss/W6eirevkEw4uNQ0rOqjq20xInPhqiH+38rKpK
	 RiZjXEfhSUhgDu1fsojlcTyjpcr9Zo1wBnwl8q9W0eoKoCtzG7svgdHpy43ax6JxXl
	 hsV7K3AALGKj/wFaqnbWcQWbK2hxiF+sXczrLSmz248KLmON3H6tU5Vx2OQUSqLlaO
	 bLrp/sqY92vtI2Z0XU/VywSTfdhcBmfhSKR6MgwSI2s7FqRzR0JRiqMJBB0zI07nC1
	 ABY+G83Mr+NV0TTGdhtOi5g+0zFnRL4aZr9X9hQ+eMxSoVGilIPx+0bry5Q74VE44J
	 IWzQamRuDCq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A670DEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 03:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168835656867.7755.10785572070662793631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7ec481838c7665edb6e6d9f2af4351a879fea077d6ced25089b1779c9904e8
Date: Mon, 03 Jul 2023 03:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688356568
