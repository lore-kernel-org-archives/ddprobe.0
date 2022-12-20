Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05077E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFF8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671508887;
	bh=iQq/joKaafPzs8A+DJnd48Bbd5GoQhs3SPYgSl+xhBo=;
	h=To:Subject:From:Date:From;
	b=PocBcpg0v8Q5isX0PUTYdlQF7CKn4KjKhLSiLVYMLzOTsu7n49ygyqJW73oUgRBFM
	 r92+PIxjpFzdjHn2LT0/nfAUhEUfniOB94jlntcZpLQGwKCMkVxxZ8JfR3gU1rqL9E
	 kk6Ys3xxlwuGG52yBVNUddvssuPakZ1ZGleATQxKeubFCL/eY3dqQXQNV7Dtjfcn9O
	 tVu2dhoSMZfJKIMqLel7c8L26TIHDliFqkdDlSu9wwGv4yXhXHkXWmyiCoFVDHgIQn
	 TbsGFvgEsa8cPhmAXgAhEvwRbppF5Duu88crAbz/Vwrik3HsOm9/pXreWBhzU4AZhU
	 q0y9ANwOur55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6162BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150888738.31959.329789346942856974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684896b25964dbbdf12afb16474a4d1c025a7c8b7abba1e976c41af78d1f7c04
Date: Tue, 20 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671508887
