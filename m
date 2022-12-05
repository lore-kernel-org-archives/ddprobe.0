Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF38617E0
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71516C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670231454;
	bh=phkJ1sRstnHXMXeQWEowmvEbFHdA4J301VpU2hyShcQ=;
	h=To:Subject:From:Date:From;
	b=InqlYIr7leCND8SkKTM1RcP2VS4yr90oS8Oq53S+0C8nIOMyfdmX7pMaoDAnSRZGZ
	 yK4zPGY0cWsGoo8yKjZ+I8DTDGj8L5gNExC7jc26CVntzWqAFgtvPAz15HUdk7YcbX
	 SAlsmRZ+Xxd2QV5bMzVZcX1E1CCC7VzHOTmPVcycL9AYa7YVfJC2GilDouA7W/crlD
	 9hhC6JBFof0qIuU/jh8rjkYfAT+n5wXGMrTZXq0vo/lToO1PHwEzYM+J4TQ6v0eTsA
	 Z6JDdDcjZtGM5eoEBixWRUg8cPNddAetnrL3TXkbwe6Sg6xRKiapRdJLWlZr7uPtU4
	 Axt979Vpzxsxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57264C47089
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023145434.919.4734038503029886625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44865a436312b735caa85c6bd92da4fe77ca9879636264c8ae6f9d07228267a6
Date: Mon, 05 Dec 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670231454
