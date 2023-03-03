Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460C41C13
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA40AC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677824765;
	bh=vHbgSm2znQ0+ICq1igjcA441EIrTWLOLEnublwit1Ro=;
	h=To:Subject:From:Date:From;
	b=IP+jp9XbJp69HgECRE/6oiebKRXwmTA3EkS8dnCgpTFZHdBpr86hMJnO7LSZw8pOX
	 9ulGPeSa9CI5O3LqV9oyfaK+VG41V/HMJuCmcfb/CKMxiNUMaXVh9wXgsUgpgvRvvx
	 0t+S9YLjUyPoZSZvJdEzRTqS+TB7USZatRdOua43gBVOWzEVqQaw5LUkCRyXgrHZg7
	 k1KDfnQB431f2aTTzSOwYJ+gTmhbj71vI43/6tcFz38mHI9DBcFejwX1vZtw4S4GJm
	 vrhTdJfdsFJ1kehJgs56J4Z9/AB/BT6krbFvTgRMuPg6lCCNc9c/N9jvPzMRvzYHBn
	 RvhslyXTcbg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A89C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167782476579.30889.5980253907281749032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4e42872990348bd9cde94ff89d103a50ededb8acc6ec58da6d1bea230529ca
Date: Fri, 03 Mar 2023 06:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677824765
