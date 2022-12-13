Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFA479C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DE1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670962287;
	bh=sw7VgKmslEawJ2MMWXbZrrJnmPA9U1Gxi8Kwf8gbB3o=;
	h=To:Subject:From:Date:From;
	b=MtJ3X4UUJLf93pbrcVRmVYdlmDaKhEsccKv6VQhbNSS0teze75x8c2PHfalr83PHQ
	 ASaJVUmnIX7UlkZ+Tsar6u+OhuoC9G+P13KA3gQgFwqZh+eghKoO4etrnzsL0WQ8oP
	 LeNSNhj6GFxMtnLFntUaO2ut/rruhKou1V23LRKMXqjGPjhXeHLmltErq5o+q9MSgx
	 dcfeN5iAHJIETpJyqNwWZ8kKHZshNSEAEa4FH4DPSrRJDgZCtrEEcIE9L0hvIicUO9
	 SUraIQdUn8jYz7ezkqrlSzkpYHUkMn0KKDFOE5etTet9wW4s3x560WfKXL8U1kdgfv
	 YreLIuvMJkzmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63997C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096228739.15805.6650076087813615145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ccef0dd8c2a30f2dbff5a7b9be832755a7d0e37b3a350c21a5e45d269491be
Date: Tue, 13 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670962287
