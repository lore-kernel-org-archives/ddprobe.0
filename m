Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4E910FB
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 14:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7326FC433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 14:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685976546;
	bh=Eym4Z3NsIdfMFNQkKeVhdDPEIwyWrFcemxPLC9vDCYo=;
	h=To:Subject:From:Date:From;
	b=T4uyfGsIBOfGxszlPjcbm/yNMQ9hMn+u1DPZ4Km9O5urQxrohf1Tm6fzfHPS/XA9u
	 jCtwe0cBAkGI7l4ze8YyXJTHEkiWTBV00fNOTef4Xq781ZtDJtWxozC43JAKSUJU0U
	 dwwwAnEYaP1HN1lBRfhYNOSSw7X6j52xTxRiYlnYEV2tpDWWTSntDzPCcVUPqgKkOX
	 92y7zv27rdIbhEqKZnKaBuXwaKhwHDW1LjpddUVZ0gN+4BqrlvEKRUUrFGkHHnSoEM
	 6wrGl119vPw+lUgi88/v5/Obzws3JzpRlGgCCNqbNA9IURgxoiKzCrVnICnZkvo8lm
	 f23hcMgDcUhVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39D1AC7EE33
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 14:49:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168597654620.7140.4478210795439092181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfafaa73b90e20b36e495d2e517b3f95a4a6a4cbbbf9bf16c973f4c2a6867e6
Date: Mon, 05 Jun 2023 14:49:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685976546
