Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2226A4E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5F9C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665133853;
	bh=4jYDxs1CBkdAuyj4j/NIBLTyDLB7v5D8n6Unx+hG14o=;
	h=To:Subject:From:Date:From;
	b=E3MiK1ZE/7lamehXye4tbCv0GLShQV29A+KT792SlDbsnIrg405LzJIkq2DfdKdsC
	 A+uFTbH85F8w3VQkZN9kFujNGEplifqJ6Fm/uSY4ehwswYxY4VjbWVAgTf5OIJRZQt
	 iPel/oBnLA2FH+KjBnKWPBBbVz+RUr2VTkSblXZAL1fQ65CBTgH+1NWCq+wFtXTPnI
	 KLhpzqGzGyXwrI+UZMgzZwAEXnvlytHIM9KKKGtKSI+BVugUmzRwbT6Z61GW02ihkq
	 56tW3IVOjKouAQ9erksNxIDJS3VIbEw1reOhnPV9Vbtad1PFog+71jO94/1M7toQQg
	 tklqNquS8f9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F22C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513385333.5191.1676326453830617468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02dd1e952dc34887770709d9fa24e1e083ad6eba6823f8a38a1f92439de14ab
Date: Fri, 07 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665133853
