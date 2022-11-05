Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDE02591
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA5FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667662254;
	bh=PxsNpkDvpA6Iqn2l31GwAo8GRQ+DNFl8TP5ljARZL1Y=;
	h=To:Subject:From:Date:From;
	b=iO1jslhixCyg1yXyRw7ki9RnzI1wU/P7IUqR/+kUtWh4iyqqlkBVX9zm0WIp8Juh/
	 keL/SouQHtEy3kgtc7vzubii7q5GLh2XbDz4IymPzxe2lws3JjU+0O1Vex7RYatJsW
	 3qbvlrKOXNSeinQRmeSBYVlEzFy5260VUJTqCnoyvgGjGrEeN/TT6IwosBt525X2Mw
	 OlxjtH2pfwYavHWmPYlm88qGPIAPjDof5WvTRppVzJQiYPk65YSvXT+AKLLYD9Q4qC
	 a/gMovKc3tcygNn1056njmBkI8wXnqL1RMoUFwQhFRuy+SOv0QHA0j6NC9RVvH2XrW
	 wW7lVua9+ox1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D9BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166766225432.9935.1872822547886459544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdf90ba6d3c7ef61f14bb313828aa82b8b7ae2f7420a7e0d0fd7b1ae94301a6
Date: Sat, 05 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667662254
