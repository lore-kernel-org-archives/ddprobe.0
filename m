Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA8C1C33
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF40C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665244253;
	bh=KV9uicDyasM5oTQbtsWTmjGWgdEOkK7N45nl9AAqMX4=;
	h=To:Subject:From:Date:From;
	b=TfYvahkJaoQIA02ykAgxFekutObYfI2Tog5Ntth6W1HOCwgFRd0BES4OD53/eE6Xj
	 MvcafJEXZ8QiJ2fDyoZzb4AAQKkdDGXpiABjzk36snezi75TKNm/+/eoYwJN54WH6Q
	 3oXupNOkSokt3qjaS9cebnWYXuHG9Gf8eSQgTlZnbK0ve3mv20GdZebR9618p08Di4
	 vSrUwzUtWCULFh/tACN5ZoUW1EdS6YxFOTxKqQ96TY5SXavq7X7aSLP449BnOX3fRo
	 H+tbl8KKYBgNM/l6zcwxD2OGuE28JxoXN5EMzdMccuxZZQsb/j6XduYwLQoItCJIx7
	 PU+tC8DN8nVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54773C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524425333.13380.8467747846837826655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc57ddfbb049577e94881eeebf122d376befa8fff38a7a668acef74a9f3fc73
Date: Sat, 08 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665244253
