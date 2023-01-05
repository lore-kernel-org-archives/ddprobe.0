Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3DA63D5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8E6C433A1
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672923087;
	bh=tzTY49W78gYe75HZI4o8e6lDg+yzIEkZebpMeVGshyM=;
	h=To:Subject:From:Date:From;
	b=WlC13jRN9LIrrVIWJaAOLB1dhtbTbtt/XC+zWsXtSA0wZGua80E9irS43rFQU+unk
	 bKA9vTTwHiaYMOOYBmB4mGxpIPvYlsoi8xat6rwML/YfRpCKm2Xh15AOnXN+IpTj6c
	 MLsrqWfgL66sA6NOjydmlG4aDom0WWpf09ZAe33cn/FCsPCBKDe5BVJ+17j7DedC9a
	 GCpYjgvzQAwQL5UdMFBqzJTuzJuK2OBDVhQsxea7nKsUZrKOxVWQNf608F21KAB+sn
	 zlSt9XzZCv5jLiF5i548nl33otW1uFdFGvv11Qgyyzaq/b3ymIkzxGSIDPZRWGljd5
	 KF/Eu4n7boBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0B4C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292308750.23042.14124922644511392627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32b4d188a471ca482ea199833255236321112e5879034794c9942cc15491f33
Date: Thu, 05 Jan 2023 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672923087
