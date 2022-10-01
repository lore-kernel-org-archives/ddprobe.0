Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70CE1FD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0F2C433D7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664600453;
	bh=9L91xBfJUQk7f1EkdMbNql8s8rae+gRMQ1yuMTBXohA=;
	h=To:Subject:From:Date:From;
	b=uLCdBS6pmLCxwtaoj1qhaRfw7isChzxqvWWn/Rs+CPuhkxoZPmReHq0vSlv561Erw
	 49UW87WOdBuZBfsukVpidetDz2o4vK2XYjLG2+5U9/zfw6b94mNir+P1QB7MR83bWA
	 l03eYY9WEMyZJb9i4iaRT82VD95BGxdS2iRJ+QIeLiLrmIwjWVRGaMgqxKH0Y34ul5
	 3nj5y+KnvZfmAYmWeWNfBlpXwKTVfnrpwULmiD3g+97CyOZQeS6mb4o369pEgxb+pN
	 +on9/DKjo/CqzrVQGo48uzWZlh+ClXAv+uttZAzSSyk9f0VCI7IVjBbZ6NM1r5hpVK
	 6W7cD8lnKJBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F38AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460045331.8569.4450065892987406765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fff320f71a9c0e4e95a0440ead07715872e9d24395246b7df71b9bcdf02e0c
Date: Sat, 01 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664600453
