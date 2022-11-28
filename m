Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFF42F43
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67B7FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669633854;
	bh=uAN2aHdU2CBZSiPh7+X7Y11TcLWFkAWX2BpNgf77rro=;
	h=To:Subject:From:Date:From;
	b=A6qEpKryyYRdGwhk/zsUG8goDiB9hrmCxwgKKzeIiBonJN/zvNmhND841PE/esTKL
	 pNUhxQRe6jeO4AfcCuC00kQHeBjylyWz0F2b/8ha3kvao/AuO50TEfpnZ4QxdzGsqA
	 MF4uemiRAokC+Fnc9gvCy3vQv12ptOYWBZHwu+uAcgxqKTobhNFa51bx08gXO4tArw
	 O00o4n48tXhVNq7dbGo55Ra3eqo3QrtGqxAvquq2qUU/C1QdCjmdYcOEOsQACgifFj
	 iir7ZqncpFu5k6RBdZfmBWA3EqaH4hxe77u5UEZEh1sUwanz8Z+jdcfzO21PoqrLb6
	 vpxsJYpr0eOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52009C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963385432.25844.18251254622015946764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918e6f28c237e5fe5468890e9daacd7fe279c668f62220edb68c6e295917def3
Date: Mon, 28 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669633854
