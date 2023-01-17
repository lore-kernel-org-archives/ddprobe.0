Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F08315A0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B052AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673920887;
	bh=mbObA7CIljL0022cvdCBTNT8e27fRsKoik4PAte3Kx0=;
	h=To:Subject:From:Date:From;
	b=lu23HYK6y+aBHPCpRlRyz7CWt0IkZy2E+bP4xhs8/0Zen51U2MdRCYxKvy2QUhQ1J
	 MVxEZyDeQNJvmcQPylr11tGW/Ea1J6nNGjSmYScBcsNri7mHgPsjIYa7M48qZbDIYo
	 AXXlfT8oUzfQYtCv5ZzNooFMRsOM2i+ndbNRziULiEify7WByHm/g+QnOlM3Hrg9ZN
	 Uag5zEVmF5tCyny47EbhlbDiXm3En7tvGCkU/YR6tuQRzZsl/F32NinIAtjUpcfb4C
	 k/vNNaATwAFGqHKIn/kywfjq4QXpLYMylfaZccjqvrsqWtylWO34QAVNKWhrbCC1jn
	 UKRpiGNNHbZrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 872D0C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167392088753.12157.17989413960328233492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec007d8c5f5afc3c45b98baf075ca10bed030fb58b3ac20f0dd85aa69c47c60
Date: Tue, 17 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673920887
