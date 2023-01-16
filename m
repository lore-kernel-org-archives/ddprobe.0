Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB787B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B918C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673904687;
	bh=wvU1pKLFCd1SHniBiDTWQev/ckNdeBH2v+x7aZ3tztw=;
	h=To:Subject:From:Date:From;
	b=cRplXBV13k1JLT8b3WIteAgDsIyKkooNuad2AqIIiMttYMynlZaXCzfKPB5CBc7bs
	 RRitouqp5HCYRyAOBbxvyMq8gHxm5UUmUfE3bChusor0PeoKr5f3JttEM+5xNKW2OC
	 I7Qcl3gqcdQkZimJLXaQg9hYsbE2pFY7B4ZWLV6chsFea41ds5kHVBKQ9Ij35trGF6
	 ZIL1Ylhvq1cRWG/rS+e4t+ShLpD31TWPWvKw0ljIpF2mQyLC1+aRcIVwf1OqCg/ADk
	 FXTNCo6XT+GaSqUQj1kmVuazt6mcK4NP78Nf20RfPzR2sS2G067pob/ws0bVp9SpyA
	 Aeh6QyXSrgn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E979C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390468743.1647.10677973797428116434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf6fbdf9375cb9a7a572c9cb59dbd98abbb0c2290cb00909cdb2a6f6cabfbf1
Date: Mon, 16 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673904687
