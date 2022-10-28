Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DE012292
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 695FCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666987854;
	bh=h4a0ooEjzVxMQ1cUNUHRp79rqKZM0NIPt8V7OsywcxI=;
	h=To:Subject:From:Date:From;
	b=D44X13uM532SM29b8khzupnLRY+EE7A3a0YdtWqTaDkuEfy82vl4smDfBjGx9etFL
	 Xi82T/WzEN5h22fyssAzR6EbAzo4wvpOnkTbGHXe4ok+mhsyu8ghaayma7Ng21vzUH
	 yMswcZj4E4nHWSe+4raAKAlkA6A4pz+Kvp1nUvihAki0JMADfB5Tv80xjw8gQ8Jwzq
	 Md1v3jxPOBYM0bQxsJzsyAuXypYldPAvGg6mxUBoDVN2Ai8CA7wZFvK3aary0AF9Mp
	 Ev3RVRYqPs9EL6eBbEntWwtUFDZ2scKjpVhWOORMivHFgNpj/suaC8ximhWop/HQNE
	 s6BQ04SOPeLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F34C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698785432.30482.10706716544943423696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d77aad886248a5206ce2814de4d7723bbb8d4c6f62a158d4b089dd81d0588d
Date: Fri, 28 Oct 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666987854
